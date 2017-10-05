@if($branchList->count() > 0)
@foreach($branchList as $branch)
<div>
  <label class="checkbox-inline">
  	<input type="radio" value="" name="branch_id">
  	<b>{!! $branch->name !!}</b>: {!! $branch->address !!}, phường 4, quận Tân bình, thành phố Hồ Chí Minh
  </label>
</div>
@endforeach
@else
<p style="font-style: italic;font-weight: bold;padding-left: 20px;color:red">Chưa có chi nhánh nào.</p>
@endif