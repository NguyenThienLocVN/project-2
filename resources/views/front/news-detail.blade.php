@extends('layouts.front.layout')
@section('styles')
    @vite(['resources/css/media_query.css', 'resources/css/bootstrap.css', 'resources/css/animate.css', 'resources/css/owl.carousel.css', 'resources/css/owl.theme.default.css', 'resources/css/style_1.css', 'resources/js/modernizr-3.5.0.min.js'])
@endsection

@section('content')
    {{-- <div id="fh5co-title-box"
        style="background-image: url({{ asset('storage/images') }}/{{ $news->featured_image_name }}); background-position: 0px -20px"
        data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="page-title">
            <span>{{ $news->updated_at->format('Y/m/d') }}</span>
            <h2>{{ $news->title }}</h2>
        </div>
    </div> --}}
    <div id="fh5co-single-content" class="container-fluid pb-4 pt-4 paddding">

        <div class="container paddding">
            <div class="row mx-0">
                <div class="col-md-8 animate-box" data-animate-effect="fadeInLeft">
                    <div class="page-title">
                        <h2>{{ $news->title }}</h2>
                        <p style="font-size: 15px; color: #a5a4a4;">{{ date_format($news->created_at,"d/m/Y") }}</p>
                    </div>
                    <div id="fh5co-title-box">
                        <img src="{{ asset('storage/images') }}/{{ $news->featured_image_name }}" alt="{{ $news->title }}"
                            style="height: 100%;width:100%;object-fit:cover" data-stellar-background-ratio="0.5">
                        {{-- <div class="overlay"></div> --}}
                    </div>
                    {{-- <span>{{ $news->updated_at->format('Y/m/d') }}</span> --}}
                    <hr>
                    {!! $news->description !!}
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
                        <div class="fh5co_heading fh5co_heading_border_bottom pt-3 py-2 mb-4">Được quan tâm</div>
                    </div>
                    @foreach($rand_news as $ra)
                    <div class="row pb-3">
                        <div class="col-5 align-self-center">
                            <img src="{{ asset('storage/images') }}/{{ $ra->featured_image_name }}" alt="img" class="fh5co_most_trading" />
                        </div>
                        <div class="col-7 paddding">
                            <div class="most_fh5co_treding_font">{{$ra->title}}</div>
                            <div class="most_fh5co_treding_font_123">{{date_format($ra->created_at,"d/m/Y")}}</div>
                        </div>
                    </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid pb-4 pt-5">
        <div class="container animate-box">
            <div>
                <div class="fh5co_heading fh5co_heading_border_bottom py-2 mb-4">Xu hướng</div>
            </div>
            <div class="owl-carousel owl-theme" id="slider2">
                @foreach($top_trending as $tt)
                <div class="item px-2">
                    <div class="fh5co_hover_news_img">
                        <div class="fh5co_news_img"><img src="{{ asset('storage/images') }}/{{ $tt->featured_image_name }}" alt="" /></div>
                        <div>
                            <a href="{{route('news.show', $tt->id)}}" class="d-block fh5co_small_post_heading"><span class="">{{$tt->title}}</span></a>
                            <div class="c_g"><i class="fa fa-clock-o"></i> {{date_format($tt->created_at,"d/m/Y")}}</div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <!--<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"
        integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous">
    </script>-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"
        integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous">
    </script>
    <!-- Waypoints -->
    <script src="js/jquery.waypoints.min.js"></script>
    <!-- Parallax -->
    <script src="js/jquery.stellar.min.js"></script>
    <!-- Main -->
    <script src="js/main.js"></script>
    @vite(['resources/js/main.js', 'resources/js/jquery.waypoints.min.js', 'resources/js/owl.carousel.min.js'])
@endsection
