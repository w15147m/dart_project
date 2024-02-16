<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EnrollmentsTableSeeder extends Seeder
{
    public function run()
    {
        DB::table('enrollments')->truncate();
        DB::table('enrollments')->insert([
            ['student_id' => 1, 'course_id' => 1, 'enrollment_date' => now()],
            ['student_id' => 2, 'course_id' => 2, 'enrollment_date' => now()],
            ['student_id' => 3, 'course_id' => 2, 'enrollment_date' => now()],
            ['student_id' => 4, 'course_id' => 2, 'enrollment_date' => now()],
            ['student_id' => 5, 'course_id' => 2, 'enrollment_date' => now()],
            ['student_id' => 6, 'course_id' => 2, 'enrollment_date' => now()],
            ['student_id' => 7, 'course_id' => 2, 'enrollment_date' => now()],
            ['student_id' => 8, 'course_id' => 2, 'enrollment_date' => now()],
            ['student_id' => 10, 'course_id' => 2, 'enrollment_date' => now()],
            ['student_id' => 9, 'course_id' => 2, 'enrollment_date' => now()],
        ]);
    }
}
