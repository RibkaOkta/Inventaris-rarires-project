<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
<<<<<<< HEAD
        // $this->call(UsersTableSeeder::class);
=======
        $this->call(RoleSeeder::class);
        $this->call(UserSeeder::class);
>>>>>>> 7108b3eabe8e071b9d479a0f6d0fab18e9c864a2
    }
}
