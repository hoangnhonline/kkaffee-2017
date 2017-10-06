<?php
namespace App\Http\Controllers\Frontend;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Cate;
use App\Models\Product;
use App\Models\City;
use App\Models\Banner;
use App\Models\Orders;
use App\Models\OrderDetail;
use App\Models\Customer;
use App\Models\Branch;
use App\Models\CustomerAddress;
use Helper, File, Session, Auth;
use Mail;

class CartController extends Controller
{

    public static $loaiSp = [];
    public static $loaiSpArrKey = [];


    /**
    * Session products define array [ id => quantity ]
    *
    */

    public function __construct(){
        // Session::put('products', [
        //     '1' => 2,
        //     '3' => 3
        // ]);
        // Session::put('login', true);
        // Session::put('userId', 1);
        // Session::forget('login');
        // Session::forget('userId');

    }
    public function index(Request $request)
    {
        if(!Session::has('products')) {
            return redirect()->route('home');
        }

        $getlistProduct = Session::get('products');
        
        $listProductId = array_keys($getlistProduct);
    
        $arrProductInfo = Product::whereIn('product.id', $listProductId)->get();        
        
        $seo['title'] = $seo['description'] = $seo['keywords'] = "Giỏ hàng";
        return view('frontend.cart.index', compact('arrProductInfo', 'getlistProduct', 'seo'));
    }

    public function addressInfo(Request $request){        
        if(!Session::has('products')) {
            return redirect()->route('home');
        }
        //dd(Session::get('address_info'));
        $getlistProduct = Session::get('products');
        
        $listProductId = array_keys($getlistProduct);
    
        $arrProductInfo = Product::whereIn('product.id', $listProductId)->get();
        
        
        $seo['title'] = $seo['description'] = $seo['keywords'] = "Thời gian & địa chỉ nhận hàng";
        

        $cityList = City::orderBy('display_order')->get();

        $userId = Session::get('userId');
        $customer = Customer::find($userId);

        $addressList = $customer->customerAddress;

        return view('frontend.cart.address-info', compact('arrProductInfo', 'getlistProduct', 'seo', 'cityList', 'customer', 'addressList'));
    }

    public function storeAddress(Request $request){
        $dataArr = $request->all();
        //dd($dataArr);
        Session::put('address_info', $dataArr);
        if(!isset($dataArr['address_id'])){
            $rs = CustomerAddress::create(
                [
                    'customer_id' => Session::get('userId'),
                    'city_id' => $dataArr['city_id'],
                    'district_id' => $dataArr['district_id'],
                    'ward_id' => $dataArr['ward_id'],
                    'email' => $dataArr['email'],
                    'phone' => $dataArr['phone'],
                    'address' => $dataArr['address'],
                    'fullname' => $dataArr['fullname'],
                    'is_primary' => 1                
                ]
            );
            $address_id = $rs->id;
        }
        if(isset($dataArr['choose_other'])){
            $rs = CustomerAddress::create(
                [
                    'customer_id' => Session::get('userId'),
                    'city_id' => $dataArr['other_city_id'],
                    'district_id' => $dataArr['other_district_id'],
                    'ward_id' => $dataArr['other_ward_id'],
                    'email' => $dataArr['other_email'],
                    'phone' => $dataArr['other_phone'],
                    'fullname' => $dataArr['other_fullname'],
                    'address' => $dataArr['other_address'],
                    'is_primary' => 0                
                ]
            );
            $address_id = $rs->id;
        }else{
            $address_id = $dataArr['address_id'];
        }
       
        Session::put('address_id', $address_id);

        return redirect()->route('payment-method');
    }
    public function paymentInfo(Request $request){     
        
        $addressInfo = Session::get('address_info');
        $detailPrimary = CustomerAddress::find($addressInfo['address_id']);
        $getlistProduct = Session::get('products');
        
        $listProductId = array_keys($getlistProduct);
    
        $arrProductInfo = Product::whereIn('product.id', $listProductId)->get();        
        
        $seo['title'] = $seo['description'] = $seo['keywords'] = "Phương thức thanh toán";

        return view('frontend.cart.payment-method', compact('getlistProduct', 'listProductId','arrProductInfo', 'seo', 'detailPrimary'));
    }
    public function getBranch(Request $request){
        $district_id = $request->district_id;        

        $branchList = Branch::where('district_id', $district_id)->orderBy('display_order')->get();

        return view('frontend.cart.branch', compact('branchList'));
    }
    public function update(Request $request)
    {
        $listProduct = Session::get('products');
        if($request->quantity) {
            $listProduct[$request->id] = $request->quantity;
        } else {
            unset($listProduct[$request->id]);
        }
        Session::put('products', $listProduct);
        return 'sucess';
    }

    public function addProduct(Request $request)
    {
        $listProduct = Session::get('products');



        if(!empty($listProduct[$request->id])) {
            $listProduct[$request->id] += 1;
        } else {
            $listProduct[$request->id] = 1;
        }

        Session::put('products', $listProduct);

        return 'sucess';
    }

    public function shippingStep1(Request $request)
    {
        $getlistProduct = Session::get('products');
        //$chon_dich_vu = $request->chon_dich_vu;
        $so_dich_vu = $request->so_dich_vu;
        $phi_dich_vu = $request->phi_dich_vu;        
        $listProductId = array_keys($getlistProduct);
        /*
        $service_fee = [];
        $totalServiceFee = 0;
        foreach($listProductId as $product_id){
            if(isset($chon_dich_vu[$product_id]) && $chon_dich_vu[$product_id] == 1){
                $service_fee[$product_id]['fee'] = $so_dich_vu[$product_id]*$phi_dich_vu[$product_id];
                $service_fee[$product_id]['so_luong'] = $so_dich_vu[$product_id];
                $service_fee[$product_id]['don_gia_dich_vu'] = $phi_dich_vu[$product_id];
                $totalServiceFee+= $service_fee[$product_id]['fee'];
            }
        }
        */
        //Session::set('service_fee', $service_fee);
        //Session::set('totalServiceFee', $totalServiceFee);
        
        if(Session::get('login') || Session::get('new-register')) {
            return redirect()->route('shipping-step-2');
        }

        if(empty($getlistProduct)) {
            return redirect()->route('home');
        }
        
        $listProductId = array_keys($getlistProduct);

        /*$chon_dich_vu = $request->chon_dich_vu;
        $so_dich_vu = $request->so_dich_vu;
        $phi_dich_vu = $request->phi_dich_vu;

        
        $service_fee = [];
        $totalServiceFee = 0;
        foreach($listProductId as $product_id){
            if(isset($chon_dich_vu[$product_id]) && $chon_dich_vu[$product_id] == 1){
                $service_fee[$product_id]['fee'] = $so_dich_vu[$product_id]*$phi_dich_vu[$product_id];
                $service_fee[$product_id]['so_luong'] = $so_dich_vu[$product_id];
                $service_fee[$product_id]['don_gia_dich_vu'] = $phi_dich_vu[$product_id];
                $totalServiceFee+= $service_fee[$product_id]['fee'];
            }
        }
        */
        $arrProductInfo = Product::whereIn('product.id', $listProductId)
                            ->leftJoin('sp_hinh', 'sp_hinh.id', '=','product.thumbnail_id')
                            ->select('sp_hinh.image_url', 'product.*')->get();

        //$service_fee = Session::get('service_fee') ? Session::get('service_fee') : 0;
        $seo = Helper::seo();
        return view('frontend.cart.shipping-step-1', compact('arrProductInfo', 'getlistProduct' , 'seo' ));
    }

    public function shippingStep2(Request $request)
    {
        $is_vanglai = Session::get('is_vanglai') ? Session::get('is_vanglai') : 0;
        $getlistProduct = Session::get('products');
        if($is_vanglai == 0){
            if((empty($getlistProduct) || !Session::get('login')) && !Session::has('new-register') )  {
                return redirect()->route('home');
            }
        }

        $listProductId = $getlistProduct ? array_keys($getlistProduct) : [];
        $arrProductInfo = Product::whereIn('product.id', $listProductId)
                            ->leftJoin('sp_hinh', 'sp_hinh.id', '=','product.thumbnail_id')
                            ->select('sp_hinh.image_url', 'product.*')->get();
        $listCity = City::orderBy('display_order')->get();

        $userId = Session::get('userId');
        $customer = Customer::find($userId);

        // check info
        // if(!$customer->full_name ||
        //    !$customer->email ||
        //    !$customer->address ||
        //    !$customer->phone ||
        //    !$customer->district_id ||
        //    !$customer->city_id ||
        //    !$customer->ward_id
        // ) {
        //     Session::flash('update-information', true);
        //     return redirect()->route('cap-nhat-thong-tin');
        // }
        // end
        //$totalServiceFee = Session::get('totalServiceFee') ? Session::get('totalServiceFee') : 0;
        $totalServiceFee = 0;
        if(is_null($customer)) $customer = new Customer;
        $seo = Helper::seo();
        
        return view('frontend.cart.shipping-step-2', compact('customer', 'listCity', 'seo', 'is_vanglai', 'getlistProduct', 'arrProductInfo'));
    }

    public function updateUserInformation(Request $request)
    {
        $getlistProduct = Session::get('products');

        $listProductId = $getlistProduct ? array_keys($getlistProduct) : [];

        $listCity = City::orderBy('display_order')->get();

        $userId = Session::get('userId');
        $customer = Customer::find($userId);

        if(is_null($customer)) $customer = new Customer;
        $seo = Helper::seo();
        return view('frontend.cart.register-infor', compact('customer', 'listCity', 'seo'));
    }

    public function setService(Request $request){
        
        Session::set('is_vanglai', 1);

    }

    public function shippingStep3(Request $request)
    {
        $userId = Session::get('userId');
        $customer = Customer::find($userId);
        

        $getlistProduct = Session::get('products');
        $is_vanglai = Session::get('is_vanglai') ? Session::get('is_vanglai') : 0;

        if($is_vanglai == 0){
            
            if(empty($getlistProduct) || !Session::get('login') || Session::has('new-register')) {
                return redirect()->route('home');
            }
            // check info
            if(!$customer->full_name ||
               !$customer->email ||
               !$customer->address ||
               !$customer->phone ||
               !$customer->district_id ||
               !$customer->city_id ||
               !$customer->ward_id
            ) {
                Session::flash('update-information', true);
                return redirect()->route('cap-nhat-thong-tin');
            }
        }        
        // end

        $listProductId = array_keys($getlistProduct);

        $arrProductInfo = Product::whereIn('product.id', $listProductId)
                            ->leftJoin('sp_hinh', 'sp_hinh.id', '=','product.thumbnail_id')
                            ->select('sp_hinh.image_url', 'product.*')->get();
        $totalCanNang = 0;
        foreach( $arrProductInfo as $product ){
            $canNangCongKenh = ($product->chieu_dai * $product->chieu_cao * $product->chieu_rong)/6000;
            $tmpCanNang =  $canNangCongKenh > $product->can_nang ? $canNangCongKenh : $product->can_nang;
            $totalCanNang += $tmpCanNang;
        }
        $vangLaiArr = Session::get('vanglai');
        $city_id = $is_vanglai == 1 && isset($vangLaiArr['city_id']) ? $vangLaiArr['city_id'] : $customer->city_id;
        $district_id = $is_vanglai == 1 && isset($vangLaiArr['district_id']) ? $vangLaiArr['district_id'] : $customer->district_id;    

        $phi_giao_hang = Helper::phiVanChuyen( $totalCanNang, $city_id, $district_id );
       
        //$totalServiceFee = Session::get('totalServiceFee') ? Session::get('totalServiceFee') : 0;
        $totalServiceFee = 0;
        
        $seo = Helper::seo();
        $total = 0;
        foreach($arrProductInfo as $product){
            $price = $product->is_sale ? $product->price_sale : $product->price;                
            $total += $getlistProduct[$product->id]*$price;                            
        }        
        $totalAmount = $total + $totalServiceFee + $phi_giao_hang;        
        $phi_cod = Helper::calCod($totalAmount, $city_id);                
        
        return view('frontend.cart.shipping-step-3', compact('arrProductInfo', 'getlistProduct', 'customer', 'phi_giao_hang', 'seo', 'is_vanglai', 'phi_cod', 'totalAmount'));
    }

    public function saveOrder(Request $request)
    {
        
        $getlistProduct = Session::get('products');
        $listProductId = array_keys($getlistProduct);
        $customer_id = Session::get('userId');
        $customer = Customer::find($customer_id);
        
        $arrProductInfo = Product::whereIn('product.id', $listProductId)
                            ->get();
        $order['tong_tien'] = 0;
        $order['tong_sp'] = array_sum($getlistProduct);
        $order['giam_gia'] = 0;
        $order['tien_thanh_toan'] = 0;
        $order['customer_id'] = Session::get('userId');
        $order['status'] = 0;
        $order['coupon_id'] = 0;
        $order['method_id'] = $request->method_id;
        $order['address_id'] = Session::get('address_id');

        // check if ho chi minh free else 150k
        $order['phi_giao_hang'] = 0;
        $order['phi_cod'] = 0;
        
        $order['service_fee'] = 0;
        foreach ($arrProductInfo as $product) {
            $price = $product->is_sale ? $product->price_sale : $product->price;        
            $order['tong_tien'] += $price * $getlistProduct[$product->id];
        }

        $order['tong_tien'] = $order['tien_thanh_toan'] = $order['tong_tien'] + $order['phi_giao_hang'] + $order['service_fee'] + $order['phi_cod'];
       
        $getOrder = Orders::create($order);

        $order_id = $getOrder->id;

        Session::put('order_id', $order_id);

        $orderDetail['order_id'] = $order_id;
       
        foreach ($arrProductInfo as $product) {            
            # code...
            $orderDetail['sp_id']        = $product->id;
            $orderDetail['so_luong']     = $getlistProduct[$product->id];
            $orderDetail['don_gia']      = $product->price;
            $orderDetail['tong_tien']    = $getlistProduct[$product->id]*$product->price;                       
            OrderDetail::create($orderDetail); 
        }

        $customer_id = Session::get('userId');
        $customer = Customer::find($customer_id);
        
        $addressInfo = CustomerAddress::find($customer_id);

        $email = $addressInfo->email ? $address_info->email :  "";
        if($email != ''){
            $emailArr = array_merge([$email], ['hoangnhonline@gmail.com']);
        }else{
            $emailArr = ['hoangnhonline@gmail.com'];
        }
        // send email
        $order_id =str_pad($order_id, 6, "0", STR_PAD_LEFT);
        
        if(!empty($emailArr)){
            Mail::send('frontend.cart.email',
                [
                    'customer'          => $customer,
                    'orderDetail'             => $getOrder,
                    'addressInfo' => $addressInfo,
                    'arrProductInfo'    => $arrProductInfo,
                    'getlistProduct'    => $getlistProduct,
                    'method_id' => $order['method_id'],
                    'order_id' => $order_id                    
                ],
                function($message) use ($emailArr, $order_id) {
                    $message->subject('Xác nhận đơn hàng hàng #'.$order_id);
                    $message->to($emailArr);
                    $message->from('kkaffee.vn@gmail.com', 'KKAFFEE');
                    $message->sender('kkaffee.vn@gmail.com', 'KKAFFEE');
            });
        }
        
        return redirect()->route('success');

    }

    public function success(Request $request){
       
        Session::put('products', []);
        Session::put('order_id', '');
        Session::forget('address_id');
        Session::forget('address_info');


        $seo = Helper::seo();

        return view('frontend.cart.success', compact('seo'));
    }

    public function deleteAll(){
        Session::put('products', []);
        return redirect()->route('cart');
    }
}

