<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MultiUsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $userData = [
            [
                'name'=>'John',
                'email'=>'John@gmail.com',
                'type'=>'Pasien',
                'password'=>bcrypt('123456'),
            ],
            [
                'name'=>'Putri',
                'email'=>'Putrigmail.com',
                'type'=>'Dokter',
                'password'=>bcrypt('123456'),
            ],
        ];

        foreach($userData as $key => $val){
            User::create($val);
        }
    }
}
