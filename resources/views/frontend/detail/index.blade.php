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
                    <a href="#" class="btn btn-yellow btn-lg btn-flat btn-order">ĐẶT HÀNG</a>
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
                    <div class="list-items-cart">
                        <div class="item-cart">
                            <div class="info-qty">
                                <a class="qty-up" href="javascript:;"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <input step="1" name="quantity" value="1" class="qty-val">
                                <a class="qty-down" href="javascript:;"><i class="fa fa-minus-square" aria-hidden="true"></i></a>
                            </div>
                            <p class="title-item">Tiêu đề món ăn có trong giỏ hàng</p>
                            <div class="price clearfix">
                                <p class="pull-left">Ghi chú</p>
                                <p class="pull-right">50.000đ</p>
                            </div>
                        </div>
                        <div class="item-cart">
                            <div class="info-qty">
                                <a class="qty-up" href="javascript:;"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <input step="1" name="quantity" value="1" class="qty-val">
                                <a class="qty-down" href="javascript:;"><i class="fa fa-minus-square" aria-hidden="true"></i></a>
                            </div>
                            <p class="title-item">Tiêu đề món ăn có trong giỏ hàng</p>
                            <div class="price clearfix">
                                <p class="pull-left">Ghi chú</p>
                                <p class="pull-right">50.000đ</p>
                            </div>
                        </div>
                        <div class="item-cart">
                            <div class="info-qty">
                                <a class="qty-up" href="javascript:;"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <input step="1" name="quantity" value="1" class="qty-val">
                                <a class="qty-down" href="javascript:;"><i class="fa fa-minus-square" aria-hidden="true"></i></a>
                            </div>
                            <p class="title-item">Tiêu đề món ăn có trong giỏ hàng</p>
                            <div class="price clearfix">
                                <p class="pull-left">Ghi chú</p>
                                <p class="pull-right">50.000đ</p>
                            </div>
                        </div>
                        <div class="item-cart">
                            <div class="info-qty">
                                <a class="qty-up" href="javascript:;"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <input step="1" name="quantity" value="1" class="qty-val">
                                <a class="qty-down" href="javascript:;"><i class="fa fa-minus-square" aria-hidden="true"></i></a>
                            </div>
                            <p class="title-item">Tiêu đề món ăn có trong giỏ hàng</p>
                            <div class="price clearfix">
                                <p class="pull-left">Ghi chú</p>
                                <p class="pull-right">50.000đ</p>
                            </div>
                        </div>
                        <div class="item-cart">
                            <div class="info-qty">
                                <a class="qty-up" href="javascript:;"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <input step="1" name="quantity" value="1" class="qty-val">
                                <a class="qty-down" href="javascript:;"><i class="fa fa-minus-square" aria-hidden="true"></i></a>
                            </div>
                            <p class="title-item">Tiêu đề món ăn có trong giỏ hàng</p>
                            <div class="price clearfix">
                                <p class="pull-left">Ghi chú</p>
                                <p class="pull-right">50.000đ</p>
                            </div>
                        </div>
                        <div class="item-cart">
                            <div class="info-qty">
                                <a class="qty-up" href="javascript:;"><i class="fa fa-plus-square" aria-hidden="true"></i></a>
                                <input step="1" name="quantity" value="1" class="qty-val">
                                <a class="qty-down" href="javascript:;"><i class="fa fa-minus-square" aria-hidden="true"></i></a>
                            </div>
                            <p class="title-item">Tiêu đề món ăn có trong giỏ hàng</p>
                            <div class="price clearfix">
                                <p class="pull-left">Ghi chú</p>
                                <p class="pull-right">50.000đ</p>
                            </div>
                        </div>
                    </div>
                    <ul class="">
                        <li>
                            <span class="pull-left cl_666">Cộng</span>
                            <span class="pull-right cl_333">200.000đ</span>
                        </li>
                        <li>
                            <span class="pull-left cl_ea0000">Giảm 30% tổng bill</span>
                            <span class="pull-right cl_ea0000">66.000đ</span>
                        </li>
                        <li>
                            <span class="pull-left cl_666">Phí phục vụ<br><small>(10% trên tổng đơn hàng)</small></span>
                            <span class="pull-right cl_333">20.000đ</span>
                        </li>
                        <li>
                            <span class="pull-left cl_666">Tạm tính<br><small>(Giá chưa bao gồm COD)</small></span>
                            <span class="pull-right cl_ea0000">154.000đ</span>
                            <div class="clearfix"></div>
                            <div class="action-cart">
                                <a href="#" class="btn btn-yellow">Đặt hàng</a>
                                <a href="#" class="btn btn-defaultyellow">Xoá</a>
                            </div>
                        </li>
                    </ul>
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
	});		
</script>
@stop
