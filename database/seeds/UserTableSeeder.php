<?php

use Illuminate\Database\Seeder;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('users')->insert([
            'name'=> 'emil',
            'email'=> 'emil@yahoo.com',
            'password'=> '1234',
        ]);
    }
}
