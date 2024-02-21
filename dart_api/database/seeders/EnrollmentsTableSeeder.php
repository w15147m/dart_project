<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Enrollment;

class EnrollmentsTableSeeder extends Seeder
{
    public function run()
    {
        Enrollment::factory(10)->create();
    }
}
