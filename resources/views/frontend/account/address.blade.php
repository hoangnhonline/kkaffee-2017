@extends('frontend.layout')
@include('frontend.partials.meta')

@section('content')
<article>
  <section class="block-image marg40">
      <img src="img/banner.png" alt=""/>
  </section>
  <div class="container">
      <div class="breadcrumbs">
          <ul>
              <li><a href="/">Trang chủ</a></li>
              <li>Thông tin đặt hàng</li>
          </ul>
      </div>
  </div>
  <section id="account" class="marg40">
      <div class="container">
          <div class="tabs-custom">
              <div class="col-tab-menu">
                  <div class="clearfix marg10 user-account">
                      <div class="image"><img src="{{ URL::asset('public/assets/img/icon.png') }}" alt="avatar"/></div>
                      <span>
                          Tài khoản của<br/>
                          <b>{!! $customer->fullname !!}</b>
                      </span>
                  </div>
                  <ul class="tab-menu">
                      <li ><a href="{{ route('account-info') }}"><i class="fa fa-user" aria-hidden="true"></i> Thông tin tài khoản</a></li>
                      <li><a href="{{ route('order-history') }}"><i class="fa fa-list-alt" aria-hidden="true"></i> Quản lý đơn hàng</a></li>
                      <li class="active"><a href="{{ route('account-address') }}" ><i class="fa fa-home" aria-hidden="true"></i> Số địa chỉ</a></li>
                      <!--<li><a href="javascript:void(0)" ><i class="fa fa-star" aria-hidden="true"></i> Điểm tích luỹ</a></li>-->
                  </ul>
              </div>
              <div class="col-tab-content admin-content" id="all">
                    <div class="title-section">
                        Số địa chỉ
                    </div>
                    @if(Session::has('message'))                        
                        <p class="alert alert-info" >{{ Session::get('message') }}</p>                  
                    @endif
                    @if (count($errors) > 0)                        
                        <div class="alert alert-danger ">
                            <ul>                           
                                <li>Vui lòng nhập đầy đủ thông tin.</li>                            
                            </ul>
                        </div>                        
                    @endif
                    @if ($addressPrimary)
                        <div class="row clearfix">
                            <div class="col-md-6">
                                <div class="little-title">ĐỊA CHỈ MẶC ĐỊNH</div>
                                <div class="well wll">
                                    <p>
                                        Tên người nhận: <b>{{ $addressPrimary->fullname }}</b>
                                    </p>
                                    <p>
                                        Địa chỉ: <b>{{ $addressPrimary->address }}, {{ $addressPrimary->ward->name }}, {{ $addressPrimary->district->name }}, {{ $addressPrimary->city->name }}</b>
                                    </p>
                                    <p>
                                        Điện thoại: <b>{{ $addressPrimary->phone }}</b>
                                    </p>
                                    @if ($addressPrimary->email)
                                        Email: <b>{{ $addressPrimary->email }}</b>
                                    @endif
                                </div>
                            </div>
                        </div>
                    @endif
              </div>
             
          </div><!--End tab custom-->
      </div>
    </section><!-- End News -->
</article>
@stop