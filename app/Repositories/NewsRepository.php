<?php

namespace App\Repositories;

use App\Interfaces\NewsInterface;
use App\Models\News;
use App\Models\CategoryNews;
use App\Repositories\BaseRepository;

class NewsRepository extends BaseRepository implements NewsInterface
{
    public function __construct(News $news)
    {
        parent::__construct($news);
    }
    
    public function top_trending($paginate)
    {
        return News::where('is_trending_news', false)->paginate($paginate);
    }
    public function news_featured_image_name($id)
    {
        return News::findOrFail($id)->featured_image_name;
    }
    public function main_trending()
    {
        return News::orderBy('created_at','desc')->first();
    }
    public function ent_news($paginate)
    {
        return News::whereIn('id', CategoryNews::where('category_id', 3)->pluck('news_id'))->get();
    }
    public function sports_news($paginate)
    {
        return News::whereIn('id', CategoryNews::where('category_id', 1)->pluck('news_id'))->get();
    }
    public function politics_news($paginate)
    {
        return News::whereIn('id', CategoryNews::where('category_id', 2)->pluck('news_id'))->get();
    }
    public function tech_news($paginate)
    {
        return News::whereIn('id', CategoryNews::where('category_id', 4)->pluck('news_id'))->get();
    }
    public function rand_news($paginate)
    {
        return News::inRandomOrder()->limit($paginate)->get();
    }
    public function count_news()
    {
        return News::count();
    }
}
