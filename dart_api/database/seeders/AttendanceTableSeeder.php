<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AttendanceTableSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        DB::table('attendance')->truncate();

        // Insert sample attendance data
        DB::table('attendance')->insert([
            ['student_id' => 1, 'course_id' => 1, 'date' => now(), 'status' => 'present'],
            ['student_id' => 2, 'course_id' => 2, 'date' => now(), 'status' => 'present'],
            ['student_id' => 3, 'course_id' => 3, 'date' => now(), 'status' => 'present'],
            ['student_id' => 4, 'course_id' => 4, 'date' => now(), 'status' => 'present'],
            ['student_id' => 5, 'course_id' => 5, 'date' => now(), 'status' => 'present'],
            ['student_id' => 6, 'course_id' => 6, 'date' => now(), 'status' => 'present'],
            ['student_id' => 7, 'course_id' => 7, 'date' => now(), 'status' => 'present'],
            ['student_id' => 8, 'course_id' =>8, 'date' => now(), 'status' => 'present'],
            ['student_id' => 9, 'course_id' => 9, 'date' => now(), 'status' => 'present'],
            ['student_id' => 10, 'course_id' => 10, 'date' => now(), 'status' => 'absent'],
        ]);
    }
}
