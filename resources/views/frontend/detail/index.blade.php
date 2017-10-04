@extends('frontend.layout')

@include('frontend.partials.meta')
@section('content')
<article class="mar-top40">
	<div class="container">
		<div class="breadcrumbs">
	        <ul>
	            <li><a href="{{ route('home') }}">Trang chủ</a></li>
	            <li><a href="{{ route('cate-parent', [$detail->cateParent->slug]) }}">{!! $detail->cateParent->name !!}</a></li>
	            <li><a href="{{ route('cate', [ $detail->cateParent->slug, $detail->cate->slug ]) }}">{!! $detail->cate->name !!}</a></li>
				<li class="active">{!! $detail->name !!}</li>	           
	        </ul>
	    </div>
	</div>
    <section id="detail-product" class="marg40">
        <div class="container marg40">
            <div class="row">
                <div class="col-md-6 feature-image">
                    <img src="{{ Helper::showImage($detail->image_url) }}" alt="{!! $detail->name !!}">
                </div>
                <div class="col-md-6">                    
                    <div class="title-section">
                        {!! $detail->name !!}
                    </div>
                    <div class="price">
                        <i class="fa fa-usd" aria-hidden="true"></i> 
                        @if($detail->is_sale == 1 && $detail->price_sale > 0)
                        	{{ number_format($detail->price_sale) }}đ
                        @else
                        	{{ number_format($detail->price) }}đ
                        @endif
                        
                        @if($detail->is_sale == 1 && $detail->price_sale > 0)
                        <small>{{ number_format($detail->price_sale) }}đ</small>
                        @endif
                    </div>
                    <div class="social block-share">
                        <div class="share-item">
							<div class="fb-like" data-href="{{ url()->current() }}" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
						</div>
						<div class="share-item" style="max-width: 65px;">
							<div class="g-plus" data-action="share"></div>
						</div>
						<div class="share-item">
							<a class="twitter-share-button"
						  href="https://twitter.com/intent/tweet?text={!! $detail->name !!}">
						Tweet</a>
						</div>
                    </div>
                    @if($detail->description)
                    <p class="des">
                        {!! $detail->description !!}
                    </p>
                    @endif
                    <a href="javascript:;" data-id="{{ $detail->id }}" class="btn btn-yellow btn-lg btn-flat btn-order">ĐẶT HÀNG</a>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="bg-eaeaea">
                <span>THỰC ĐƠN</span>
                <a href="#">KHUYẾN MÃI</a>
            </div>
        </div>
        <div class="container">
            <div class="tabs-custom">
                <div id="myScrollspy" class="col-tab-menu hidden-xs">
                    <ul class="tab-menu affix-top">
                        <li><a href="#all">{!! $detail->cateParent->name !!}</a></li>
                        <li><a href="#tab01" data-target-id="">Sản phẩm hot</a></li>
                        @foreach($cateList as $cate)
                        <li><a href="#tab02" data-target-id="">{!! $cate->name !!}</a></li>
                        @endforeach
                    </ul>
                </div>
                <div class="col-tab-content admin-content">
                    <p class="blockquote-promotion">
                        <span>Giảm giá 30%</span> cho tất cả các sản phẩm dưới đây
                    </p>
                    <div class="list-box-items" id="all">
                        <div class="title-admin-content">SHOP KKAFFEE</div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp3.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp4.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-box-items" id="tab01">
                        <div class="title-admin-content">SẢN PHẨM HOT</div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp13.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp2.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-box-items" id="tab02">
                        <div class="title-admin-content">VIETNAMESE COFFEE</div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp3.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp4.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-box-items" id="tab03">
                        <div class="title-admin-content">Coffee Frappy</div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp3.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp4.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-box-items" id="tab04">
                        <div class="title-admin-content">Tea</div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp3.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp4.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-box-items" id="tab05">
                        <div class="title-admin-content">Smoothies</div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp3.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp4.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="list-box-items" id="tab06">
                        <div class="title-admin-content">Matcha</div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp3.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                        <div class="box-item">
                            <div class="image"><img src="img/sp4.png" alt=""></div>
                            <p class="title-box-item">Tên sản phẩm tiêu biểu số 01 trong danh mục được đăng trên website</p>
                            <div class="box-price">
                                <a href="#"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <div class="price">
                                    325.000đ
                                    <small>Giảm 10%</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div><!--End tab custom-->
            <div class="cart-info cart-side">
                <div class="title-cart-info">THÔNG TIN GIỎ HÀNG</div>
                <div class="content-cart-info">
                    @if(!empty(Session::get('products')))
                    <div class="list-items-cart">                        
                        <?php $total = 0; ?>
                        @if( $arrProductInfo->count() > 0)
                            <?php $i = 0; ?>
                          @foreach($arrProductInfo as $product)
                          <?php 
                          $i++;
                          $price = $product->is_sale ? $product->price_sale : $product->price; 

                          $total += $total_per_product = ($getlistProduct[$product->id]*$price);
                          
                          ?>
                        <div class="item-cart">
                            <div class="info-qty">
                                <a class="qty-up" data-id="{{ $product->id }}" href="javascript:;"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <input step="1" name="quantity" value="{{ $getlistProduct[$product->id] }}" class="qty-val">
                                <a class="qty-down" data-id="{{ $product->id }}" href="javascript:;"><i class="fa fa-minus-square" aria-hidden="true"></i></a>
                            </div>
                            <p class="title-item">{!! $product->name !!}</p>
                            <div class="price clearfix" style="font-size:14px">   
                                <p class="pull-left" >{{ $getlistProduct[$product->id] }}x{{ number_format($price) }}</p>                             
                                <p class="pull-right">{!! number_format($total_per_product) !!}đ</p>
                            </div>
                        </div>   
                        
                        @endforeach
                        @endif                     
                    </div>
                    <ul class="">
                        <li>
                            <span class="pull-left cl_666">Cộng</span>
                            <span class="pull-right cl_333">{!! number_format($total) !!}đ</span>
                        </li>
                        <!--<li>
                            <span class="pull-left cl_ea0000">Giảm 30% tổng bill</span>
                            <span class="pull-right cl_ea0000">66.000đ</span>
                        </li>-->
                        <li>
                            <span class="pull-left cl_666">Phí phục vụ<br><small>(10% trên tổng đơn hàng)</small></span>
                            <span class="pull-right cl_333">{{ number_format($total*10/100) }}đ</span>
                        </li>
                        <li>
                            <span class="pull-left cl_666">Tạm tính<br><small>(Giá chưa bao gồm COD)</small></span>
                            <span class="pull-right cl_ea0000">154.000đ</span>
                            <div class="clearfix"></div>
                            <div class="action-cart">
                                <a href="#" class="btn btn-yellow">Đặt hàng</a>
                                <a href="{{ route('empty-cart') }}" onclick="return confirm('Quý khách có chắc chắn bỏ hết hàng ra khỏi giỏ?'); " class="btn btn-defaultyellow">Xoá</a>
                            </div>
                        </li>
                    </ul>
                    @else
                    <p class="cart-empty">Chưa có sản phẩm nào.</p>
                    @endif
                </div>
            </div>
        </div>
    </section><!-- End product -->
</article>
<input type="hidden" id="rating-route" value="{{ route('rating') }}">
<form id="rating-form">
	{{ csrf_field() }}
	<input type="hidden" id="object_id" name="object_id" value="{{ $detail->id }}">
	<input type="hidden" id="object_type" name="object_type" value="1">
	<input type="hidden" id="score" name="score" value="">
</form>
@stop
@section('js')    
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
	        url : $('#rating-route').val(),
	        type : 'POST',
	        dataType : 'html',
	        data : $('#rating-form').serialize(),
	        success : function(data){
	            $('#rating-summary').html(data);
	            var $input = $('input.rating');
	            if ($input.length) {
	                $input.removeClass('rating-loading').addClass('rating-loading').rating();
	            }
	        }
   		});

        $(document).ready(function($){  
          $('a.btn-order').click(function() {
                var product_id = $(this).data('id');
                addToCart(product_id);
                
              });
        });
        $(document).on('change', '.change_quantity', function() {
            var quantity = $(this).val();
            var id = $(this).data('id');
            updateQuantity(id, quantity, 'ajax');
        });
        $(document).on('click', '.qty-up', function(){
            var obj = $(this);
            var quantityObj = obj.parents('.item-cart').find('.qty-val');            
            quantityObj.val(parseInt(quantityObj.val()) + 1);
            updateQuantity(obj.data('id'), parseInt(quantityObj.val()) + 1, 'normal');
        });
        $(document).on('click', '.qty-down', function(){
            var obj = $(this);
            var quantityObj = obj.parents('.item-cart').find('.qty-val');   
            var currQuantity = parseInt(quantityObj.val());         
            if( currQuantity > 1){
                quantityObj.val(currQuantity - 1);
            }else if(currQuantity == 1){
                obj.parents('.item-cart').remove();
            }
            updateQuantity(obj.data('id'), (currQuantity - 1), 'normal');
        });
        
	});	
function addToCart(product_id) {
  $.ajax({
    url: $('#route-add-to-cart').val(),
    method: "GET",
    data : {
      id: product_id
    },
    success : function(data){
       window.location.reload();
    }
  });
}	
function calTotalProduct() {
    var total = 0;
    $('.change_quantity ').each(function() {
        total += parseInt($(this).val());
    });
    $('.order_total_quantity').html(total);
}

function updateQuantity(id, quantity, type) {
    $.ajax({
        url: $('#route-update-product').val(),
        method: "POST",
        data: {
            id: id,
            quantity: quantity
        },
        success: function(data) {
            /*
            $.ajax({
                url: $('#route-short-cart').val(),
                method: "GET",

                success: function(data) {
                    if (type == 'ajax') {
                        $('#short-cart-content').html(data);
                        calTotalProduct();
                    } else {
                        window.location.reload();
                    }
                }
            });
            */
        }
    });
}
</script>
@stop
