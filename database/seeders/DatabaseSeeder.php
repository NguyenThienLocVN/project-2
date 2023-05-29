<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;

use App\Models\Category;
use App\Models\Menu;
use App\Models\News;
use App\Models\User;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        News::factory(10)->create();

        User::create([
            'name' => 'Admin',
            'email' => 'admin@gmail.com',
            'email_verified_at' => now(),
            'password' => Hash::make('admin'),
        ]);
        Category::create([
            'category_name' => 'Thể thao',
        ]);
        Category::create([
            'category_name' => 'Chính trị',
        ]);
        Category::create([
            'category_name' => 'Giải trí',
        ]);
        Category::create([
            'category_name' => 'Quốc tế',
        ]);
        Menu::create([
            'name' => 'main_menu',
            'body' => '1,2,3',
        ]);
    }
}
