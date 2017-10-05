@extends('frontend.layout')
@include('frontend.partials.meta')
@section('content')
<?php $total = 0; ?>
<article class="mar-top40">
  <div class="container">
      <div class="breadcrumbs">
          <ul>
              <li><a class="home" href="{{ route('home') }}" title="Trở về trang chủ">Trang chủ</a></li>             
              <li><a href="{{ route('cart') }}">Giỏ hàng</a></li>
              <li>Thời gian & địa chỉ nhận hàng</li>
          </ul>
      </div>
  </div>  
  <section id="checkout-page">
      <div class="container">
          <div class="title-section">
              THÔNG TIN ĐẶT HÀNG
          </div>
      </div>
      <div class="container">
          <div class="box-checkout marg40">
              <div class="header-box">
                  <div class="row bs-wizard" style="border-bottom:0;">
                      <div class="col-xs-4 bs-wizard-step active">
                          <div class="progress"><div class="progress-bar"></div></div>
                          <a href="{{ route('address-info') }}" class="bs-wizard-dot">1</a>
                          <div class="bs-wizard-info text-center">Thời gian & địa chỉ nhận hàng</div>
                      </div>

                      <div class="col-xs-4 bs-wizard-step disabled"><!-- complete -->
                          <div class="progress"><div class="progress-bar"></div></div>
                          <a href="{{ route('order-info') }}" class="bs-wizard-dot">2</a>
                          <div class="bs-wizard-info text-center">Thông tin đơn hàng</div>
                      </div>

                      <div class="col-xs-4 bs-wizard-step disabled"><!-- complete -->
                          <div class="progress"><div class="progress-bar"></div></div>
                          <a href="#" class="bs-wizard-dot">3</a>
                          <div class="bs-wizard-info text-center">Hoàn tất</div>
                      </div>
                  </div>
              </div>
              <div class="body-box">
                  <p><i class="fa fa-circle cl_ea0000" aria-hidden="true"></i> Chọn địa chỉ chi nhánh</p>
                  <div class="row div-parent" id="branch-info" >
                      <div class="col-md-6">
                           <select name="branch_city_id" class="form-control city_id" id="branch_city_id" data-bv-field="branch_city_id">
                              <option value="">Tỉnh/TP</option>
                              @foreach($cityList as $city)
                                <option value="{{$city->id}}"
                                @if(old('branch_city_id') == $city->id)
                                selected
                                @endif
                                >{{$city->name}}</option>
                              @endforeach
                            </select>
                      </div>
                      <div class="col-md-6">
                          <select class="form-group form-control district_id" id="branch_district_id" name="branch_district_id">
                              <option value="">Quận/Huyện</option>
                          </select>
                      </div>
                  </div>
                  <div class="form-group" id="branch_div">
                                        
                  </div>
                  <p><i class="fa fa-circle text-success" aria-hidden="true"></i> Địa chỉ nhận hàng</p>
                  <div class="row">
                      <div class="form-group col-md-4">
                        <input type="text" class="form-control no-round" id="fullname" name="fullname" placeholder="Họ tên" value="{{ old('fullname') }}">
                      </div>
                      <div class="form-group col-md-4">
                        <input type="text" class="form-control no-round" id="phone" name="phone" placeholder="Số điện thoại" value="{{ old('phone') }}">
                      </div>
                      <div class="form-group col-md-4">
                        <input type="email" class="form-control no-round" id="email" name="email" placeholder="Email" value="{{ old('email') }}">
                      </div>
                  </div>
                  
                  <div class="div-parent" id="primary_address">
                    <div class="row">
                        <div class="col-md-4">
                            <select class="form-group form-control no-round city_id" name="city_id" id="city_id">
                                <option>Tỉnh/TP</option>
                                @foreach($cityList as $city)
                                  <option value="{{$city->id}}"
                                  @if(old('branch_city_id') == $city->id)
                                  selected
                                  @endif
                                  >{{$city->name}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-md-4">
                            <select class="form-group form-control no-round district_id" name="district_id" id="district_id">
                                <option>Quận/Huyện</option>                              
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <select class="form-control no-round ward_id" name="ward_id" id="ward_id">
                                <option>Phường/Xã</option>
                            </select>
                        </div>
                    </div>                    
                  </div>
                  <div class="form-group row">
                      <div class="col-md-12"><input type="text" class="form-control no-round" id="address" name="address" placeholder="Địa chỉ người đặt hàng" value="{{ old('address') }}"></div>
                  </div>
                  <div class="form-group">
                      <div>
                          <label class="checkbox-inline"><input type="radio" value=""><b>Địa chỉ chi nhánh Tân Bình 1</b>: 216 Hoàng Văn Thụ, phường 4, quận Tân bình, thành phố Hồ Chí Minh</label>
                      </div>
                      <div>
                          <label class="checkbox-inline"><input type="radio" value=""><b>Địa chỉ chi nhánh Tân Bình 2</b>: 216 Hoàng Văn Thụ, phường 4, quận Tân bình, thành phố Hồ Chí Minh</label>
                      </div>
                  </div>
                  
                  <div class="form-group">
                      <label class="checkbox-inline"><input class="action-other-address" type="checkbox" value=""><b>Giao đến địa chỉ khác</b></label>
                  </div>
                  <div class="other-address">
                      <div class="row">
                          <div class="form-group col-md-4">
                            <input type="text" class="form-control no-round" id="other_fullname" name="other_fullname" placeholder="Họ tên" value="{{ old('other_fullname') }}">
                          </div>
                          <div class="form-group col-md-4">
                            <input type="text" class="form-control no-round" id="other_phone" name="other_phone" placeholder="Số điện thoại" value="{{ old('other_phone') }}">
                          </div>
                          <div class="form-group col-md-4">
                            <input type="email" class="form-control no-round" id="other_email" name="other_email" placeholder="Email" value="{{ old('other_email') }}">
                          </div>
                      </div>
                      
                      <div class="div-parent" id="primary_address">
                        <div class="row">
                            <div class="col-md-4">
                                <select class="form-group form-control no-round city_id" name="other_city_id" id="other_city_id">
                                    <option>Tỉnh/TP</option>
                                    @foreach($cityList as $city)
                                      <option value="{{$city->id}}"
                                      @if(old('branch_city_id') == $city->id)
                                      selected
                                      @endif
                                      >{{$city->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-4">
                                <select class="form-group form-control no-round district_id" name="other_district_id" id="other_district_id">
                                    <option>Quận/Huyện</option>                              
                                </select>
                            </div>
                            <div class="form-group col-md-4">
                                <select class="form-control no-round ward_id" name="other_ward_id" id="other_ward_id">
                                    <option>Phường/Xã</option>
                                </select>
                            </div>
                        </div>                    
                      </div>
                      <div class="form-group row">
                          <div class="col-md-12"><input type="text" class="form-control no-round" id="other_address" name="other_address" placeholder="Địa chỉ" value="{{ old('other_address') }}"></div>
                      </div>
                  </div>
                  <p><i class="fa fa-circle text-primary" aria-hidden="true"></i> Ghi chú cho đơn hàng</p>
                  <div class="form-group">
                      <textarea class="form-control no-round" rows="7" placeholder="Nhập thông tin ghi chú của bạn"></textarea>
                  </div>
                  <div class="form-group clearfix checkout-action">
                      <div class="pull-right"><a href="#" class="btn btn-yellow btn-flat">Tiếp theo</a></div>
                      <div class="pull-right"><a href="#" class="btn btn-grey btn-flat">Hủy bỏ</a></div>
                  </div>
              </div>
          </div>
      </div>
  </section>
</article>
@stop
@section('js')
   <script type="text/javascript">
   $(document).ready(function(){      
      $('.city_id').change(function(){         
        var obj = $(this);
            $.ajax({
              url : '{{ route('get-child') }}',
              data : {
                mod : 'district',
                col : 'city_id',
                id : obj.val()
              },
              type : 'POST',
              dataType : 'html',
              success : function(data){
                obj.parents('.div-parent').find('.district_id').html(data);                                
              }
            })
          
        });
      jQuery(".other-address").hide();
        jQuery(".action-other-address").click(function () {
            if (jQuery(this).is(":checked")) {
                jQuery(".other-address").show(300);
            } else {
                jQuery(".other-address").hide(200);
            }
        });
      $('#primary_address .district_id').change(function(){         
        var obj = $(this);
            $.ajax({
              url : '{{ route('get-child') }}',
              data : {
                mod : 'ward',
                col : 'district_id',
                id : obj.val()
              },
              type : 'POST',
              dataType : 'html',
              success : function(data){
                $('#primary_address .ward_id').html(data);                                
              }
            });
          
        });
      $('#branch_district_id').change(function(){         
        var obj = $(this);
            $.ajax({
              url : '{{ route('get-branch') }}',
              data : {                
                district_id : obj.val()
              },
              type : 'GET',
              dataType : 'html',
              success : function(data){
                $('#branch_div').html(data);
              }
            })
          
        });
    });

  </script>
@endsection








