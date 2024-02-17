<?php

namespace Database\Seeders;
// database/seeders/EnrollmentSeeder.php

use Illuminate\Database\Seeder;
use App\Models\Enrollment;

class EnrollmentSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        Enrollment::truncate();

        // Insert sample enrollment records
        // Adjust student_id and course_id based on your existing student and course records
        Enrollment::create(['student_id' => 1, 'course_id' => 1, 'enrollment_date' => now()]);
        Enrollment::create(['student_id' => 2, 'course_id' => 1, 'enrollment_date' => now()]);
        // Add more enrollment records as needed
    }
}
