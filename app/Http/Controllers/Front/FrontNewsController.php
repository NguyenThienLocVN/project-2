<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Http\Traits\MenuTrait;
use Illuminate\Http\Request;
use App\Interfaces\ImageInterface;
use App\Interfaces\CategoryInterface;
use App\Interfaces\NewsInterface;
use App\Models\Menu;

class FrontNewsController extends Controller
{
    use MenuTrait;
    private $categoryInterface;
    private $imageInterface;
    private $newsInterface;

    public function __construct(
        CategoryInterface $categoryInterface,
        ImageInterface $imageInterface,
        NewsInterface $newsInterface
    ) {
        $this->categoryInterface = $categoryInterface;
        $this->imageInterface = $imageInterface;
        $this->newsInterface = $newsInterface;
    }
    public function index()
    {
        // dd($this->newsInterface->top_trending(3));
        return view('front.index')->with([
            'sports_news' => $this->newsInterface->sports_news(6),
            'ent_news' => $this->newsInterface->ent_news(6),
            'politics_news' => $this->newsInterface->politics_news(6),
            'tech_news' => $this->newsInterface->tech_news(5),
            'top_trending' => $this->newsInterface->top_trending(4),
            'main_trending' => $this->newsInterface->main_trending(),
            'menu' => $this->activeMenu(),
        ]);
    }
    public function show($id)
    {
        $news = $this->newsInterface->findById($id);
        // $news->increment_views();
        // dd($id);
        return view('front.news-detail')->with([
            'news' => $news,
            'menu' => $this->activeMenu(),
            'top_trending' => $this->newsInterface->top_trending(4),
            'rand_news' => $this->newsInterface->rand_news(5),
        ]);
    }
}
