<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PackageSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('packages')->insert([
            ['package_name' => 'Bronze',
                'yearly_payment' => 0],
            ['package_name' => 'Bronze Plus',
                'yearly_payment' => 1],
            ['package_name' => 'Gold',
                'yearly_payment' => 0],
            ['package_name' => 'Gold Plus',
                'yearly_payment' => 1],
            ['package_name' => 'Platinium',
                'yearly_payment' => 0],
            ['package_name' => 'Platinium Plus',
                'yearly_payment' => 1],
        ]);
    }
}
