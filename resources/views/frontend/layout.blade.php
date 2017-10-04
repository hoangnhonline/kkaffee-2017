<!DOCTYPE html>
<!--[if lt IE 7 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie6 lte7 lte8 lte9"><![endif]-->
<!--[if IE 7 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie7 lte7 lte8 lte9"><![endif]-->
<!--[if IE 8 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie8 lte8 lte9"><![endif]-->
<!--[if IE 9 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie9 lte9"><![endif]-->
<!--[if IE 10 ]><html dir="ltr" lang="vi-VN" class="no-js ie ie10 lte10"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html lang="vn">
<head>
	<title>@yield('title')</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="content-language" content="vi"/>
    <meta name="description" content="@yield('site_description')"/>
    <meta name="keywords" content="@yield('site_keywords')"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>    
    <meta property="article:author" content="https://www.facebook.com/KKAFFEE"/>   
    <link rel="canonical" href="{{ url()->current() }}"/>        
    <meta property="og:locale" content="vi_VN" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content="@yield('title')" />
    <meta property="og:description" content="@yield('site_description')" />
    <meta property="og:url" content="{{ url()->current() }}" />
    <meta property="og:site_name" content="K KAFFEE.vn" />
    <?php $socialImage = isset($socialImage) ? $socialImage : $settingArr['banner']; ?>
    <meta property="og:image" content="{{ Helper::showImage($socialImage) }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}" />
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:description" content="@yield('site_description')" />
    <meta name="twitter:title" content="@yield('title')" />     
    <meta name="twitter:image" content="{{ Helper::showImage($socialImage) }}" />
	<link rel="icon" href="{{ URL::asset('public/assets/favicon.ico') }}" type="image/x-icon">
	<!-- ===== Style CSS ===== -->
	<link rel="stylesheet" href="{{ URL::asset('public/assets/lib/owlcarousel/dist/assets/owl.carousel.min.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('public/assets/lib/owlcarousel/dist/assets/owl.theme.default.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ URL::asset('public/assets/lib/fontawesome/css/font-awesome.min.css') }}" media="screen"/>
    <link rel="stylesheet" type="text/css" href="{{ URL::asset('public/assets/css/bootstrap.min.css') }}" media="screen"/>
    <link rel="stylesheet" type="text/css" href="{{ URL::asset('public/assets/css/style.css') }}" media="screen"/>
  	<!-- HTML5 Shim and Respond.js') }}" IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js') }}" doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		<link href='css/animations-ie-fix.css' rel='stylesheet'>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js') }}""></script>
		<script src="https://oss.maxcdn.com/libs/respond.js') }}"/1.4.2/respond.min.js') }}""></script>
	<![endif]-->
</head>
<body>
@if($routeName == "product")
<div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.10&appId=567408173358902";
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
    <script>window.twttr = (function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0],
    t = window.twttr || {};
  if (d.getElementById(id)) return t;
  js = d.createElement(s);
  js.id = id;
  js.src = "https://platform.twitter.com/widgets.js";
  fjs.parentNode.insertBefore(js, fjs);

  t._e = [];
  t.ready = function(f) {
    t._e.push(f);
  };

  return t;
}(document, "script", "twitter-wjs"));</script>
@endif
<div class="wrapper">
    <header>
        <div class="bg_black">
            <div class="container">
                <div class="banner-top"><img src="{{ URL::asset('public/assets/img/banner-top.png') }}" alt=""/></div>
                <nav id="nav">
                    <a class="hidden-sm hidden-md hidden-lg nav-button-mobi" href="javascript:void(0)"><i class="fa fa-bars" aria-hidden="true"></i></a>
                    <ul class="clearfix">
                        <li><a class="active" href="{{ route('cate-parent', 'coffee') }}">COFFEE</a></li>
                        <li><a href="product.html">SHOP 24h</a></li>
                        <li><a href="promotion.html">HỖ TRỢ TIÊU DÙNG</a></li>
                        <li><a href="#">BẤT ĐỘNG SẢN</a></li>
                        <li><a href="checkout.html">ĐẶT GIAO HÀNG</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="clearfix">
            <div class="container">
                <div class="pull-left">
                    <div id="logo">
                    	<a href="{{ route('home') }}" title="Logo K KAFFEE">
							<img src="{{ Helper::showImage($settingArr['logo']) }}" alt="Logo K KAFFEE">
						</a>
                    </div>
                    <div class="option-hd option-kv dropdown">
                        <button class="dropdown-toggle" type="button" data-toggle="dropdown">
                            HCM
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu-header">
                            <li><a href="#">HCM</a></li>                            
                        </ul>
                    </div>
                    <div class="option-hd option-dv dropdown">
                        <button class="dropdown-toggle" type="button" data-toggle="dropdown">
                            Dịch vụ
                            <span class="caret"></span>
                        </button>
                        <ul class="dropdown-menu-header">
                            @foreach($servicesList as $services)
                            <li><a href="{{ $services->url }}">{!! $services->title !!}</a></li>
                            @endforeach
                        </ul>
                    </div>
                </div>
                <div class="pull-right logined">
                    <div class="block-login">
                        <a href="#" class="btn btn-yellow">Đăng ký</a>
                        <a href="#" class="btn btn-grey">Đăng nhập</a>
                    </div>
                    <div class="block-logined">
                        <div class="cart-header">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <a href="#">
                                Giỏ hàng<br/>
                                <span><b>0</b> sản phẩm</span>
                            </a>
                        </div>
                        <div class="account-header dropdown">
                            <img src="{{ URL::asset('public/assets/img/icon.png') }}" alt="">
                            <a class="dropdown-toggle" data-toggle="dropdown">
                                Chào <b>CHRIS</b><br/>
                                <span>Tài khoản</span>
                            </a>
                            <ul class="dropdown-menu-header">
                                <li><a href="#">Thông tin tài khoản</a></li>
                                <li><a href="#">Quản lý đơn hàng</a></li>
                                <li><a href="#">Sổ địa chỉ</a></li>
                                <li><a href="#">Điểm tích luỹ</a></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div><!-- End container -->
        </div>
    </header>
    @yield('content')
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-footer col-footer-1">
                    <div id="logo-footer"><img src="{{ URL::asset('public/assets/img/logo-header.png') }}" alt=""/></div>
                    <p @if($isEdit) class="edit" @endif" data-text="5">{!! $textList[5] !!}</p>
                </div>
                <div class="col-footer col-footer-2">
                    <div class="title-col-footer">ĐỊA CHỈ</div>
                    <p>
                        <b @if($isEdit) class="edit" @endif" data-text="7">{!! $textList[7] !!}</b><br/>
                        Địa chỉ: 216 Hoàng Văn Thụ, phường 4, quận Tân Bình<br/>
                        Hotline: 0909 58 57 49<br/>
                        Email: tungocsang88@gmail.com
                    </p>
                </div>
                <div class="col-footer col-footer-3">
                    <div class="title-col-footer">TẬP ĐOÀN K KAFFEE</div>
                    <a href="welcome.html">Giới thiệu</a>
                    <a href="#">Quy trình đặt món </a>
                    <a href="#">Hướng dẫn thanh toán</a>
                    <a href="#">Giải quyết khiếu nại</a>
                    <a href="#">Dành cho đối tác</a>
                    <a href="contact.html">Liên hệ</a>
                </div>
                <div class="col-footer col-footer-4">
                    <div class="title-col-footer">K KAFFEE APP</div>
                    <a href="#"><img src="{{ URL::asset('public/assets/img/apple.png') }}" alt=""/></a>
                    <a href="#"><img src="{{ URL::asset('public/assets/img/androi.png') }}" alt=""/></a>
                    <p>Hoặc đặt món qua <a href="#">Foody App</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <div class="copyright">
        <div class="container pos_rel">
            <span @if($isEdit) class="edit" @endif" data-text="6">{!! $textList[6] !!}</span>
            <div class="pos_rel hidden-sm hidden-xs">
                <div class="cf_chat">
                    <a href="javascript:void(0)"><i class="fa fa-weixin" aria-hidden="true"></i> Chat tư vấn</a>
                    <div class="fb-page" data-tabs="messages" data-href="https://www.facebook.com/Surimy-shop-705004346240684/" data-width="280" data-height="300" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true" data-show-posts="false">                               
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a href="javascript:void(0)" class="gotop"><img src="{{ URL::asset('public/assets/img/back-to-top.png') }}" alt="Back to Top"/></a>
</div>
<div id="editContentModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Cập nhật nội dung</h4>
      </div>
      <form method="POST" action="{{ route('save-content') }}">
      {{ csrf_field() }}
      <input type="hidden" name="id" id="txtId" value="">
      <div class="modal-body">
        <textarea rows="5" class="form-control" name="content" id="txtContent"></textarea>
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-primary" id="btnSaveContent">Save</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
      </form>
    </div>

  </div>
</div>
        <script src="{{ URL::asset('public/assets/js/jquery.min.js') }}"></script>
        <script src="{{ URL::asset('public/assets/js/bootstrap.min.js') }}"></script>
        @if($routeName == "product")
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        @endif
        <script type="text/javascript">
            jQuery("a.nav-button-mobi").click(function () {
                if (jQuery("body").hasClass("active-menu"))
                {
                    jQuery("body").removeClass("active-menu");
                }
                else
                {
                    jQuery("body").addClass("active-menu");
                }
            });
            jQuery("a.gotop").click(function () {
                $('html, body').animate({scrollTop: 0}, 'fast');
            });
            jQuery(".cf_chat>a").click(function(){
                if (jQuery(this).parent().hasClass("active"))
                {
                    jQuery(this).parent().removeClass("active");
                }
                else
                {
                    jQuery(this).parent().addClass("active");
                }
            });
        </script>      
    
    <input type="hidden" id="route-newsletter" value="{{ route('register.newsletter') }}">
	
	{!! $settingArr['google_analystic'] !!}
	<script type="text/javascript">	
	
	$(document).on('keypress', '.txtSearch', function(e) {
		    var obj = $(this);
		    if (e.which == 13) {
		        if ($.trim(obj.val()) == '') {
		            return false;
		        }
		    }
		});
		$(document).on('keypress', '#txtNewsletter', function(e){
		if(e.keyCode==13){
		    $('#btnNewsletter').click();
		}
	});
		
	$('#btnNewsletter').click(function() {
	    var email = $.trim($('#txtNewsletter').val());        
	    if(validateEmail(email)) {
	        $.ajax({
	          url: $('#route-newsletter').val(),
	          method: "POST",
	          data : {
	            email: email,
	          },
	          success : function(data){
	            if(+data){
	              swal('', 'Đăng ký nhận bản tin thành công.', 'success');
	            }
	            else {
	              swal('', 'Địa chỉ email đã được đăng ký trước đó.', 'error');
	            }
	            $('#txtNewsletter').val("");
	          }
	        });
	    } else {
	        swal({ title: '', text: 'Vui lòng nhập địa chỉ email hợp lệ.', type: 'error' });
	    }
	});
	function validateEmail(email) {
		var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		return re.test(email);
	}
	</script>
	@include('frontend.partials.custom-css')
	@yield('js')
	<script type="text/javascript">
		$(document).ready(function(){
			$.ajaxSetup({
			      headers: {
			          'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
			      }
			  });

			$('.edit').click(function(){
				$('#txtId').val($(this).data('text'));
				$('#txtContent').val($(this).html());
				$('#editContentModal').modal('show');
			});
			$('#btnSaveContent').click(function(){
				$.ajax({
					url : '{{ route('save-content') }}',
					type : "POST",
					data : {
						id : $('#txtId').val(),
						content : $('#txtContent').val()
					},
					success:  function(){
						window.location.reload();
					}

				});
			});
		});
	</script>

@if(!in_array($routeName, ['news-detail', 'product']))
<div class="reviews-summary" id="rating-summary" itemscope="" itemtype="http://schema.org/Review" style="display:none">
   <div class="rating-title" itemprop="name">Đánh giá :</div>  
   <div class="rating-action dot" itemprop="reviewRating" itemscope="" itemtype="http://schema.org/Rating">
      <span>Xếp hạng <span itemprop="ratingValue">5</span> - 180 phiếu bầu</span>
   </div>
</div>
@endif
</body>
</html>