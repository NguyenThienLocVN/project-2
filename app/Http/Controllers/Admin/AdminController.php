<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Interfaces\CategoryInterface;
use App\Interfaces\NewsInterface;

class AdminController extends Controller
{
    private $newsInterface;
    private $categoryInterface;
    public function __construct(
        NewsInterface $newsInterface,
        CategoryInterface $categoryInterface
    ) {
        $this->newsInterface = $newsInterface;
        $this->categoryInterface = $categoryInterface;
    }

    public function index()
    {
    }
    public function dashboard()
    {
        return view('admin.dashboard')->with([
            'categoryCount' => $this->categoryInterface->countCategory(),
            'newsCount' => $this->newsInterface->count_news(),
            // 'news' => $this->newsInterface->paginate(20),
            // 'menu'=> 
        ]);
    }
}
