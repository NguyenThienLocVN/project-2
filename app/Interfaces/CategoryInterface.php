<?php

namespace App\Interfaces;

interface CategoryInterface
{
    public function selectedCategories($newsId);
    public function countCategory();
}
