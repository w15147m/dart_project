<?php

namespace Database\Seeders;
// database/seeders/MarksheetSeeder.php

use Illuminate\Database\Seeder;
use App\Models\Marksheet;

class MarksheetSeeder extends Seeder
{
    public function run()
    {
        // Clear existing records to start from scratch
        Marksheet::truncate();

        // Insert sample marksheet records
        // Adjust student_id and subject_id based on your existing student and subject records
        Marksheet::create(['student_id' => 1, 'subject_id' => 1, 'marks' => 90]);
        Marksheet::create(['student_id' => 2, 'subject_id' => 1, 'marks' => 85]);
        // Add more marksheet records as needed
    }
}
