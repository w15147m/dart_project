<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Course;

class CourseSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        Course::truncate();

        // Insert sample courses
        Course::create(['course_name' => 'Mathematics', 'course_code' => 'MATH']);
        Course::create(['course_name' => 'Science', 'course_code' => 'SCI']);
        Course::create(['course_name' => 'English', 'course_code' => 'ENG']);
        // Add more courses as needed
    }
}
