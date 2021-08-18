<?php

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = App\User::create([
        	'name'		=> 'Admin',
        	'email' 	=> 'admin@gmail.com',
        	'password'	=> '123456',
        	'foto'	    => 'user.png',
        ]);

        $user->assignRole(['admin', 'pengelola']);
    }
}
