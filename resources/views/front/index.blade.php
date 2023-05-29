@extends('layouts.front.layout')

@section('content')
    <div class="container-fluid paddding mb-5">
        <div class="row mx-0">
            <div class="col-md-6 col-12 paddding animate-box" data-animate-effect="fadeIn">
                <div class="fh5co_suceefh5co_height"><img
                        src="{{ asset('storage/images') }}/{{ $main_trending->featured_image_name }}" alt="img" />
                    <div class="fh5co_suceefh5co_height_position_absolute"></div>
                    <div class="fh5co_suceefh5co_height_position_absolute_font">
                        <div class=""><a href="#" class="color_fff"> <i
                                    class="fa fa-clock-o"></i>&nbsp;&nbsp;{{ $main_trending->updated_at->format('Y/m/d') }}
                            </a></div>
                        <div class=""><a href="{{ route('news.show', $main_trending->id) }}"
                                class="fh5co_good_font">{{ $main_trending->title }}</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                @if ($top_trending->count() > 0)
                    <div class="row">
                        @foreach ($top_trending as $news)
                            <div class="col-md-6 col-6 paddding animate-box" data-animate-effect="fadeIn">
                                <div class="fh5co_suceefh5co_height_2"><img
                                        src="{{ asset('storage/images') }}/{{ $news->featured_image_name }}"
                                        alt="img" />
                                    <div class="fh5co_suceefh5co_height_position_absolute"></div>
                                    <div class="fh5co_suceefh5co_height_position_absolute_font_2">
                                        <div class=""><a href="#" class="color_fff"> <i
                                                    class="fa fa-clock-o"></i>&nbsp;&nbsp;{{ $news->updated_at->format('Y/m/d') }}</a>
                                        </div>
                                        <div class=""><a href="{{ route('news.show', $news->id) }}"
                                                class="fh5co_good_font_2">{{ $news->title }}</a></div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                @endif
            </div>
        </div>
    </div>
    <div class="container-fluid pt-3">
        <div class="container animate-box" data-animate-effect="fadeIn">
            <div>
                <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Thể thao</div>
            </div>
            <div class="owl-carousel owl-theme js" id="slider1">
                @foreach($sports_news as $n)
                <div class="item px-2">
                    <div class="fh5co_latest_trading_img_position_relative">
                        <div class="fh5co_latest_trading_img"><img src="{{ asset('storage/images') }}/{{ $n->featured_image_name }}"
                            alt="featured image"
                                class="fh5co_img_special_relative" /></div>
                        <div class="fh5co_latest_trading_img_position_absolute"></div>
                        <div class="fh5co_latest_trading_img_position_absolute_1">
                            <a href="news/{{$n->id}}" class="text-white">{{$n->title}}</a>
                            <div class="fh5co_latest_trading_date_and_name_color">{{date_format($n->created_at,"d/m/Y")}}</div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
    <div class="container-fluid pb-4 pt-5">
        <div class="container animate-box">
            <div>
                <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Giải trí</div>
            </div>
            <div class="owl-carousel owl-theme" id="slider2">
                @foreach($ent_news as $ent)
                <div class="item p-2" style="border: 1px solid #ccc; border-radius: 5px;">
                    <div class="fh5co_hover_news_img">
                        <div class="fh5co_news_img"><img src="{{ asset('storage/images') }}/{{ $ent->featured_image_name }}" /></div>
                        <div>
                            <a href="news/{{$ent->id}}" class="d-block fh5co_small_post_heading"><span class="">{{$ent->title}}</span></a>
                            <div class="c_g"><i class="fa fa-clock-o"></i> {{date_format($n->created_at,"d/m/Y")}}</div>
                        </div>
                    </div>
                </div>
                @endforeach
                
            </div>
        </div>
    </div>
    <div class="container-fluid pb-4 pt-4 paddding">
        <div class="container paddding">
            <div class="row mx-0">
                <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                    <div>
                        <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Chính trị</div>
                    </div>
                    @foreach($politics_news as $pol)
                    <div class="row pb-4">
                        <div class="col-md-5">
                            <div class="fh5co_hover_news_img">
                                <div class="fh5co_news_img"><img src="{{ asset('storage/images') }}/{{ $pol->featured_image_name }}" alt="" />
                                </div>
                                <div></div>
                            </div>
                        </div>
                        <div class="col-md-7 animate-box">
                            <a href="news/{{$pol->id}}" class="fh5co_magna py-2"> {{$pol->title}}</a> 
                                <p style="color:#8a8989; margin: 0;font-size:12px;">{{date_format($pol->created_at,"d/m/Y")}}</p>
                            <div class="fh5co_consectetur">{{$pol->excerpt}}</div>
                            <a href="news/{{$pol->id}}" class="fh5co_seemore">Xem thêm &#x2192;</a>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="col-md-3 animate-box" data-animate-effect="fadeInRight">
                    <div>
                        <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Tags</div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="fh5co_tags_all">
                        <a href="#" class="fh5co_tagg">Kinh doanh</a>
                        <a href="#" class="fh5co_tagg">Công nghệ</a>
                        <a href="#" class="fh5co_tagg">Thể thao</a>
                        <a href="#" class="fh5co_tagg">Nghệ thuật</a>
                        <a href="#" class="fh5co_tagg">Lối sống</a>
                        <a href="#" class="fh5co_tagg">Chụp ảnh</a>
                        <a href="#" class="fh5co_tagg">Chính trị</a>
                        <a href="#" class="fh5co_tagg">Giáo dục</a>
                        <a href="#" class="fh5co_tagg">Xã hội</a>
                        <a href="#" class="fh5co_tagg">Teen</a>
                    </div>
                    <div>
                        <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">Công nghệ</div>
                    </div>
                    @foreach($tech_news as $tech)
                    <div class="row pb-3">
                        <div class="col-5 align-self-center">
                            <img src="{{ asset('storage/images') }}/{{ $tech->featured_image_name }}" alt="img" class="fh5co_most_trading" />
                        </div>
                        <div class="col-7 paddding">
                            <a href="news/{{$tech->id}}" style="color: #222222;" class="most_fh5co_treding_font"> {{$tech->title}}</a>
                            <div class="most_fh5co_treding_font_123">{{date_format($tech->created_at,"d/m/Y")}}</div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
