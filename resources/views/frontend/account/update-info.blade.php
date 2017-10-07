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
                      <div class="image"><img src="img/icon.png" alt=""/></div>
                      <span>
                          Tài khoản của<br/>
                          <b>Chris Lai</b>
                      </span>
                  </div>
                  <ul class="tab-menu">
                      <li class="active"><a href="#" data-target-id="all"><i class="fa fa-user" aria-hidden="true"></i> Thông tin tài khoản</a></li>
                      <li><a href="javascript:void(0)" data-target-id="tab01"><i class="fa fa-list-alt" aria-hidden="true"></i> Quản lý đơn hàng</a></li>
                      <li><a href="javascript:void(0)" data-target-id="tab02"><i class="fa fa-home" aria-hidden="true"></i> Số địa chỉ</a></li>
                      <li><a href="javascript:void(0)" data-target-id="tab03"><i class="fa fa-star" aria-hidden="true"></i> Điểm tích luỹ</a></li>
                  </ul>
              </div>
              <div class="col-tab-content admin-content" id="all">
                  <div class="title-section">
                      THÔNG TIN TÀI KHOẢN
                  </div>
                  <form class="form">
                      <div class="row">
                          <div class="col-md-6 form-group clearfix">
                              <div class="col-form-label"><label for="username">Họ và tên</label></div>
                              <div class="col-form-input"><input type="text" class="form-control" id="username" value="Chris Lai"></div>
                          </div>
                          <div class="col-md-6  form-group clearfix">
                              <div class="col-form-label"><label for="phone">Điện thoại</label></div>
                              <div class="col-form-input"><input type="text" class="form-control" id="phone" value="090xxx"></div>
                          </div>
                      </div>
                      <div class="form-group row clearfix">
                          <div class="col-md-6">
                              <div class="col-form-label"><label for="email">Email</label></div>
                              <div class="col-form-input"><input type="email" class="form-control" id="email" value="Chris_Lai_0204@yahoo.com" disabled></div>
                          </div>
                          <div class="col-md-6">
                              <div class="col-form-label"><label for="optradio">Giới tính</label></div>
                              <div class="col-form-input  row clearfix">
                                  <div class="col-md-6">
                                      <div class="radio">
                                          <label><input type="radio" name="optradio">Nam</label>
                                      </div>
                                  </div>
                                  <div class="col-md-6">
                                      <div class="radio">
                                          <label><input type="radio" name="optradio">Nữ</label>
                                      </div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="clearfix">
                          <div class="col-form-label"><label for="optradio">Ngày sinh</label></div>
                          <div class="col-form-input">
                              <div class="row clearfix">
                                  <div class="col-md-3">
                                      <select class="form-group form-control">
                                          <option>Ngày</option>
                                          <option>2</option>
                                          <option>3</option>
                                          <option>4</option>
                                      </select>
                                  </div>
                                  <div class="col-md-3">
                                      <select class="form-group form-control">
                                          <option>Tháng</option>
                                          <option>2</option>
                                          <option>3</option>
                                          <option>4</option>
                                      </select>
                                  </div>
                                  <div class="col-md-3">
                                      <select class="form-group form-control">
                                          <option>Năm</option>
                                          <option>2</option>
                                          <option>3</option>
                                          <option>4</option>
                                      </select>
                                  </div>
                                  <div class="col-md-3">
                                      <select class="form-group form-control">
                                          <option>Khu vực</option>
                                          <option>2</option>
                                          <option>3</option>
                                          <option>4</option>
                                      </select>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <div class="checkbox clearfix">
                          <div class="col-form-label"></div>
                          <div class="col-form-input"><label><input class="action-change-password" type="checkbox" value="">Thay đổi mật khẩu</label></div>
                      </div>
                      <div class="info-change-password">
                          <div class="form-group clearfix">
                              <div class="col-form-label"><label for="oldpwd">Pass cũ</label></div>
                              <div class="col-form-input"><input type="password" class="form-control" id="oldpwd"></div>                                        
                          </div>
                          <div class="form-group clearfix">
                              <div class="col-form-label"><label for="newpwd">Pass mới</label></div>
                              <div class="col-form-input"><input type="password" class="form-control" id="newpwd"></div>                                        
                          </div>
                          <div class="form-group marg30 clearfix">
                              <div class="col-form-label"><label for="repwd">Nhập lại</label></div>
                              <div class="col-form-input"><input type="password" class="form-control" id="repwd"></div>                                        
                          </div>
                          <div class="clearfix account-action">
                              <div class="col-form-label"></div>
                              <div class="col-form-input"><a href="#" class="btn btn-yellow btn-flat">Cập nhật</a></div>
                          </div>
                      </div>
                  </form>
              </div>
             
          </div><!--End tab custom-->
      </div>
  </section><!-- End News -->
</article>
<div class="content-shop left-sidebar">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-8 col-xs-12 main-content">
                <div class="main-content-shop">                 
                     <h1 class="page-heading">
                    <span class="page-heading-title2">Thông tin tài khoản</span>
                </h1>
                <div class="shipping-address-page">              
                  <div class="row row-style-2">
                    <div class="col-lg-12">
                      <div class="panel panel-default">
                        
                        <div class="panel-body">
                          <form class="form-horizontal bv-form" role="form" id="address-info" novalidate>
                            <div class="form-group row">
                              <label for="full_name" class="col-lg-3 control-label visible-lg-block">Họ tên </label>
                              <div class="col-lg-9 input-wrap has-feedback">
                                  <input type="text" name="full_name" class="form-control address" id="full_name" value="{{$customer->full_name}}" placeholder="Nhập họ tên" data-bv-field="full_name">
                                  <small class="help-block" data-bv-validator="notEmpty" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng nhập họ tên</small>
                             </div>
                            </div>
                            <div class="form-group row">
                              <label for="telephone" class="col-lg-3 control-label visible-lg-block">Điện thoại</label>
                              <div class="col-lg-9 input-wrap has-feedback">
                                <input type="tel" name="telephone" class="form-control address" id="telephone" value="{{ $customer->phone }}" placeholder="Nhập số điện thoại" data-bv-field="telephone">
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="telephone" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng nhập số điện thoại</small></div>
                            </div>
                            <input type="hidden" name="country_id" value="235">
                            <div class="form-group row viet">
                              <label for="city_id" class="col-lg-3 control-label visible-lg-block">Tỉnh/TP</label>
                              <div class="col-lg-9 input-wrap has-feedback">
                                <select name="city_id" class="form-control address" id="city_id" data-bv-field="city_id">
                                  <option value="">--Chọn--</option>
                                  @foreach($listCity as $city)
                                    <option value="{{$city->id}}"
                                    @if($customer->city_id == $city->id)
                                    selected
                                    @endif
                                    >{{$city->name}}</option>
                                  @endforeach
                                </select>
                                <small class="help-block" data-bv-validator="notEmpty" data-bv-for="city_id" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng chọn tỉnh/TP</small></div>
                            </div>
                            <div class="form-group row viet">
                              <label for="district_id" class="col-lg-3 control-label visible-lg-block">Quận/Huyện</label>
                              <div class="col-lg-9 input-wrap has-feedback">
                                <select name="district_id" class="form-control address" id="district_id">
                                  <option value="">--Chọn--</option>                              
                                </select>
                                 <small class="help-block" data-bv-validator="notEmpty" data-bv-for="district_id" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng chọn quận/huyện</small></div>
                            </div>
                            <div class="form-group row viet">
                              <label for="ward_id" class="col-lg-3 control-label visible-lg-block">Phường/xã</label>
                              <div class="col-lg-9 input-wrap has-feedback">
                                <select name="ward_id" class="form-control address" id="ward_id">
                                  <option value="">--Chọn--</option>
                                </select>
                                 <small class="help-block" data-bv-validator="notEmpty" data-bv-for="ward_id" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng chọn phường/xã</small></div>
                            </div>
                            <div class="form-group row">
                              <label for="street" class="col-lg-3 control-label visible-lg-block">Địa chỉ</label>
                              <div class="col-lg-9 input-wrap has-feedback">
                                <textarea name="street" class="form-control address" id="street" placeholder="Ví dụ: 52, đường Trần Hưng Đạo" data-bv-field="street" style="height:100px">{{ $customer->address }}</textarea>
                                 <span class="help-block"></span> <small class="help-block" data-bv-validator="notEmpty" data-bv-for="street" data-bv-result="NOT_VALIDATED" style="display: none;">Vui lòng nhập địa chỉ</small></div>
                            </div>                         
                            
                            <div class="form-group row end">
                              <div class="col-lg-3"></div>
                              <div class="col-lg-9">
                                <div id="btn-address" class="btn btn-primary btn-custom3" value="update" style="width:120px">Cập nhật</div>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                      <div class="shiping_plan"></div>
                    </div>
                  </div>

                </div><!-- /.shipping-address-page -->
                </div>
                <!-- End Main Content Shop -->
            </div>
            @include('frontend.account.sidebar')
            
        </div>
    </div>
</div>
<style type="text/css">    
    .dashboard-order.have-margin {
        margin-bottom: 20px;
    }   
    table.table-responsive thead tr th {
        display: table-cell;
        padding: 8px;
        background: #f8f8f8;
        font-weight: 500;    
    }
    table.table-responsive tbody tr td{
        font-size: 14px !important;
    }
</style>
<div class="clearfix"></div>
@endsection
@section('javascript')
   <script type="text/javascript">
    var customer_district_id = '{{ $customer->district_id }}';
    var customer_ward_id = '{{ $customer->ward_id }}';
    var customer_country_id = '{{ $customer->country_id }}';
      
    $(document).ready(function() {
         if(customer_country_id == 235){
            $('div.viet').show();
          }else{
            $('div.viet').hide();
          }
        $('#btn-address').click(function() {
            $(this).attr('disabled', '');
            validateData();
          });
        $('#city_id').change(function() {
            var city_id = $(this).val();

            customer_district_id = '';
            getDistrict(city_id);
          });
          if( $('#city_id').val() > 0){
            getDistrict($('#city_id').val());
          }

          $('#district_id').change(function() {
            var district_id = $(this).val();
            customer_ward_id = '';
            getWard(district_id);
          });
          if( $('#district_id').val() > 0){
            getWard($('#district_id').val());
          }
          $('#country_id').change(function(){
            var country_id = $(this).val();
            if( country_id != 235){
              $('div.viet').hide();
            }else{
              $('div.viet').show();
            }
          });
    });

      function getDistrict(city_id) {

        if(!city_id) {
          $('#district_id').empty();
          $('#district_id').append('<option value="">--Chọn--</option>');
          return;
        }

        $.ajax({
          url: "{{ route('get-district') }}",
          method: "POST",
          data : {
            id: city_id
          },
          success : function(list_ward){
            $('#district_id').empty();
            $('#district_id').append('<option value="">--Chọn--</option>');

            for(i in list_ward) {
              $('#district_id').append('<option value="'+list_ward[i].id+'">'+list_ward[i].name+'</option>');
            }
            if( customer_district_id > 0){
              $('#district_id').val(customer_district_id);
              getWard(customer_district_id);
            }

          }
        });
      }
      function getWard(district_id) {

        if(!district_id) {
          $('#ward_id').html('<option value="">--Chọn--</option>');
          return;
        }

        $.ajax({
          url: "{{route('get-ward')}}",
          method: "POST",
          data : {
            id: district_id
          },
          success : function(list_ward){
            $('#ward_id').empty();
            $('#ward_id').append('<option value="">--Chọn--</option>');

            for(i in list_ward) {
              $('#ward_id').append('<option value="'+list_ward[i].id+'">'+list_ward[i].name+'</option>');
            }

            $('#ward_id').val(customer_ward_id);

          }
        });
      }
    function validateData() {
        var error = [];

        var full_name = $('#full_name').val();
        var city_id   = $('#city_id').val();
        var country_id   = $('#country_id').val();
        var district_id   = +$('#district_id').val();
        var ward_id   = +$('#ward_id').val();
        var street    = $('#street').val();
        var telephone = $('#telephone').val();
        var email = $('#email_form').val();

        if(!full_name.length)
        {
          error.push('full_name');
        }
        if(!country_id)
        {
          error.push('country_id');
        }
        if(country_id == 235){
          if(!city_id)
          {
            error.push('city_id');
          }

          if(!district_id)
          {
            error.push('district_id');
          }

          if(!ward_id)
          {
            error.push('ward_id');
          }
        } 

        if(!street)
        {
          error.push('street');
        }

        if(!(/\d{8,15}$/g.test(telephone)) ) {
          error.push('telephone');
        }

        var list = ['full_name', 'city_id', 'district_id', 'ward_id', 'street', 'telephone'];

        for( i in list ) {
            $('#' + list[i]).next().hide();
            $('#' + list[i]).parent().removeClass('has-error');
        }

        if(error.length) {
          for( i in error ) {
            $('#' + error[i]).parent().addClass('has-error');
            $('#' + error[i]).next().show();
          }

          $('#btn-address').removeAttr('disabled');
        } else {
          $.ajax({
            url: "{{ route('update-customer') }}",
            method: "POST",
            data : {
              full_name : full_name,
              city_id : city_id,
              district_id : district_id,
              country_id : country_id,
              ward_id : ward_id,
              address : street,
              phone : telephone,
              address_type : $('input[name=delivery_address_type]:checked').val()
            },
            success : function(data){
               $('#btn-address').removeAttr('disabled');
              swal({ title: '', text: 'Cập nhật thông tin thành công.', type: 'success' });
            }
          });
        }
      }
  </script>
@endsection