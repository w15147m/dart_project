<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Marksheet;

class MarksheetsTableSeeder extends Seeder
{
    public function run()
    {
        Marksheet::factory(10)->create();
    }
}
