<?php

namespace Database\Seeders;
// database/seeders/EnrollmentSeeder.php
// database/seeders/AttendanceSeeder.php

use Illuminate\Database\Seeder;
use App\Models\Attendance;

class AttendanceSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        attendance::truncate();

        // Insert sample attendance records
        // Adjust student_id and course_id based on your existing student and course records
        attendance::create(['student_id' => 1, 'course_id' => 1, 'date' => now(), 'status' => 'present']);
        attendance::create(['student_id' => 2, 'course_id' => 3, 'date' => now(), 'status' => 'absent']);
        // Add more attendance records as needed
    }
}
