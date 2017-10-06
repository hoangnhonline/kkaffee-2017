@extends('frontend.layout')
@include('frontend.partials.meta')

@section('content')
<div class="content-shop left-sidebar">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-8 col-xs-12 main-content">
                <div class="main-content-shop">                 
                    <h2 class="page-heading">
                        <span class="page-heading-title2">Đơn hàng #{{ $str_order_id }} - {{ $status[$order->status] }}</span>
                    </h2>
                    <!-- Content page -->
                      
                      <div class="account-order-detail">
                      
                        <p class="date mt10 mb20">Ngày mua:  {{ $ngay_dat_hang }}</p>
                        
                        <div class="address-1">
                          <h4 class="mb20"> Địa chỉ </h4>
                          <p style="font-weight:bold">{{ $customer->full_name }}</p>
                          <p>{{ $customer->address }}, 
                          @if(isset($customer->xa->name))
                            {{$customer->xa->name}}
                          @endif, 
                          @if(isset($customer->huyen->name))
                            {{$customer->huyen->name}},
                          @endif
                          @if(isset($customer->tinh->name))
                            {{$customer->tinh->name}}
                          @endif</p>
                          <p>Điện thoại: {{ $customer->phone }}</p>
                        </div>
                        
                        <div class="row mb20 mt20">
                          <div class="col-sm-7">
                            <div class="payment-1">
                              <h4 class="mb20">Phương thức vận chuyển</h4>
                              <p>Vận chuyển Tiết Kiệm (dự kiến giao hàng vào {{ $order->ngay_giao_du_kien }})</p>
                              
                            </div>

                          </div>
                          <div class="col-sm-5">
                            <div class="payment-2 has-padding">
                              <h4 class="mb20">Hình thức thanh toán</h4>
                              <p>@if($order->method_id == 1)
                              Chuyển khoản ngân hàng
                              @elseif($order->method_id == 2)
                              INTERNET BANKING / VISA / MASTER CARD
                              @endif
                              <?php
                              echo "<br/>";
                              if($order->da_thanh_toan == 1){
                                echo " <span style='color:red'>ĐÃ THANH TOÁN</span>";
                              }else{
                                echo " <span style='color:red'>CHƯA THANH TOÁN</span>";
                              }
                              ?>
                              </p>
                            </div>
                          </div>
                        </div>
                      </div>
                      
                      <h4 class="mb10">Sản phẩm</h4>
                      
                      <div class="table-responsive">
                        <table class="table table-bordered dashboard-order">
                          <thead>
                            <tr class="default">
                              <th class="text-nowrap"> <span class="hidden-xs hidden-sm hidden-md">Tên sản phẩm</span> <span class="hidden-lg">Tên sản phẩm</span> </th>                           
                              <th class="text-nowrap">Giá</th>
                              <th class="text-nowrap">Số lượng</th>                          
                              <th class="text-nowrap">Tổng cộng</th>
                            </tr>
                          </thead>
                          <tbody>
                            @foreach($orderDetail as $rowOrder)
                            <tr>
                              <td><a href="#" target="_blank" class="link">{{ Helper::getName($rowOrder->sp_id, "product" ) }}</a> </td>
                             
                              <td><strong class="hidden-lg hidden-md">Giá: </strong>{{ number_format($rowOrder->don_gia_vnd) }}</td>
                              <td><strong class="hidden-lg hidden-md">Số lượng: </strong>{{ $rowOrder['so_luong'] }} </td>
                             
                              <td><strong class="hidden-lg hidden-md">Tổng cộng: </strong>{{ number_format($rowOrder->tong_tien_vnd) }}</td>
                            </tr>
                            @endforeach                         
                          </tbody>
                          <tfoot>                                                                            
                            <tr>
                              <td colspan="3" class="text-right"><strong>Tổng tiền</strong></td>
                              <td><strong>{{ number_format($order->tong_tien_vnd)}}</strong></td>
                            </tr>
                          </tfoot>
                        </table>
                      </div>                    
                      <a href="{{ route('order-history')}}" class="btn btn-info btn-back"><i class="fa fa-caret-left"></i>  Quay về Đơn hàng của tôi</a>
                      @if($order->status == 0)
                      <button id="btnHuy" class="btn btn-danger" style="float:right"><i class="fa fa-times"></i>  Hủy Đơn hàng</button>
                      @endif
                </div>
                <!-- End Main Content Shop -->
            </div>
            @include('frontend.account.sidebar')
            
        </div>
    </div>
</div>

<div class="clearfix"></div>
@endsection
@section('javascript')
   <script type="text/javascript">
    $(document).ready(function() {
      $('#btnHuy').click(function(){ 
        var obj = $(this);       
        if(confirm('Chắc chắn hủy đơn hàng?')){
          $.ajax({
            url : '{{ route('order-cancel') }}',
            type  : 'POST',
            data : {
              id : {{ $order->id }}
            },
            success : function(){
              swal({ title: '', text: 'Hủy đơn hàng #{{ $str_order_id }}', type: 'success' });
              obj.remove();
            }
          });
        }
      });
    });
  </script>
@endsection