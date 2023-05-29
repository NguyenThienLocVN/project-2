<?php

namespace App\Interfaces;


interface NewsInterface
{
    public function top_trending($paginate);
    public function news_featured_image_name($id);
    public function main_trending();
    public function sports_news($paginate);
    public function ent_news($paginate);
    public function politics_news($paginate);
    public function tech_news($paginate);
    public function rand_news($paginate);
    public function count_news();
    // public function 
}
