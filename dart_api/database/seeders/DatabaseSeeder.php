<?php

// database/seeders/DatabaseSeeder.php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run()
    {
        $this->call([
            StudentsTableSeeder::class,
            CoursesTableSeeder::class,
            SubjectsTableSeeder::class,
            AttendancesTableSeeder::class,
            EnrollmentsTableSeeder::class,
            MarksheetsTableSeeder::class,
        ]);
    }
}

