<?php

namespace Database\Seeders;
// database/seeders/StudentSeeder.php

use Illuminate\Database\Seeder;
use App\Models\Student;

class StudentSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        Student::truncate();

        // Insert 10 students
        for ($i = 1; $i <= 10; $i++) {
            Student::create([
                'name' => "Student $i",
                'address' => "Address $i",
                'contact_number' => "Contact $i",
            ]);
        }
    }
}
