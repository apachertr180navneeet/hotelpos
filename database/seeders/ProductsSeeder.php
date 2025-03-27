<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Functions;
use Session;
use Str;
use Faker\Factory as faker;
class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create();
        for($i=0;$i<100;$i++){
        $cost = mt_rand(11111,99999);
        $array['heading'] = $faker->name;
        $array['model'] = Str::random(10);
        $array['cost'] = $cost;
        $array['price'] = $cost*2;
        $array['barcode'] = mt_rand(11111111,99999999);
        $array['taxId'] = mt_rand(1,6);
        $array['quantity'] = mt_rand(11,99);
        $array['storeId'] = 1;
        $array['userId'] = 2;
        $array['insertedBy'] = 2;
        Functions::setData("products",$array);
        /*$array['name'] = $faker->name;
        $array['mobile'] = mt_rand(1111111111,9999999999);
        $array['email'] = $faker->email;
        $array['storeId'] = 1;
        $array['userId'] = 2;
        $array['insertedBy'] = 2;
        Functions::setData("customers",$array);*/
    }
    }
}
