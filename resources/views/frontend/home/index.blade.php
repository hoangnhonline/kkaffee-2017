@extends('frontend.layout')

@include('frontend.partials.meta')

@section('content')
<article>
    <section class="block-image marg40">
        <img src="{{ URL::asset('public/assets/img/banner.png') }}" alt=""/>
    </section>
    <section id="welcome" class="marg40">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="title-section @if($isEdit) edit @endif" data-text="1" >{!! $textList[1] !!}</div>
                    <p data-text="2" @if($isEdit) class="edit" @endif>{!! $textList[2] !!}</p>
                </div>
                <div class="col-md-6">
                    <img src="{{ URL::asset('public/assets/img/hinh-gioi-thieu.png') }}" alt=""/>
                </div>
            </div>
        </div>
    </section><!-- End News -->
    <section class="block-image marg40">
        <img src="{{ URL::asset('public/assets/img/banner-ngang.png') }}" alt=""/>
    </section>
    <section id="service-us" class="marg40">
        <div class="container">
            <div class="title-section text-center @if($isEdit) edit @endif" data-text="3">{!! $textList[3] !!}</div>
            <p class="text-center @if($isEdit) edit @endif" data-text="4">{!! $textList[4] !!}</p>
        </div>
        <div class="container clearfix">
            @foreach($servicesList as $services)
            <div class="item-service">
                <a href="{{ $services->url }}" title="{!! $services->title !!}">
                    <div class="image"><img src="{{ Helper::showImage($services->image_url) }}" alt="{!! $services->title !!}"/></div>
                    <h2>{!! $services->title !!}</h2>
                </a>
            </div>
            @endforeach
        </div>
    </section><!-- End -->
</article>
@stop