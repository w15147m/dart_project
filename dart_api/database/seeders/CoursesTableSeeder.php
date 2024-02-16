<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CoursesTableSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        DB::table('courses')->truncate();

        // Insert sample courses
        DB::table('courses')->insert([
            ['course_name' => 'Computer web', 'course_code' => 'CS101'],
            ['course_name' => 'Computer Science', 'course_code' => 'CS1011'],
            ['course_name' => 'mobile app', 'course_code' => 'MATH201'],
            ['course_name' => 'ios app', 'course_code' => 'MATH2011'],
            // Add other courses as needed
        ]);
    }
}
