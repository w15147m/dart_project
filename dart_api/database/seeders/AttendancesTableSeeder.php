<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Attendance;

class AttendancesTableSeeder extends Seeder
{
    public function run()
    {
        Attendance::factory(10)->create();
    }
}
