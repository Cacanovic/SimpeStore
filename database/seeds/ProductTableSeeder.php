<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product= new \App\Product([
        	'imagePath'=>'https://rukminim1.flixcart.com/image/312/312/helmet/z/q/g/1-vega-off-road-gangster-original-imadt2nnrazqnx4m.jpeg?q=70',
        	'title'=>'Monster helmet',
        	'description'=>'Super cool helmet',
        	'price'=>55

        	]);
        $product->save();
         $product= new \App\Product([
        	'imagePath'=>'https://ae01.alicdn.com/kf/HTB1ywRhJVXXXXb7XpXXq6xXFXXXd/Free-shipping-special-promotions-Arai-font-b-helmet-b-font-font-b-motorcycle-b-font-font.jpg',
        	'title'=>'Popular skul helmet',
        	'description'=>'Super cool and scary helmet',
        	'price'=>89

        	]);
        $product->save();
         $product= new \App\Product([
        	'imagePath'=>'https://i.pinimg.com/736x/0c/bc/be/0cbcbec94dd7c0beff3d7ba6662311d2--full-face-motorcycle-helmets-bike-helmets.jpg',
        	'title'=>'Full face helmet',
        	'description'=>'Evolution Carbon Fiber Dual Sport Naked Full Face Motorcycle Helmet',
        	'price'=>290

        	]);
        $product->save();
         $product= new \App\Product([
        	'imagePath'=>'https://i.pinimg.com/736x/cf/27/bd/cf27bdd6b6156501e90231258ade0a5b--motorcycle-clothes-full-face-motorcycle-helmets.jpg',
        	'title'=>'Full Face Motorcycle Helmet',
        	'description'=>'Bell Sports Full Face Motorcycle Helmet - Arrow Dull Black',
        	'price'=>270

        	]);
        $product->save();
         $product= new \App\Product([
        	'imagePath'=>'https://images-na.ssl-images-amazon.com/images/I/41a4gL-qwoL._SL500_.jpg',
        	'title'=>'Harley Cruiser Motorcycle Helmet',
        	'description'=>'Bell Rogue Open Face Harley Cruiser Motorcycle Helmet - Matte Black / Large',
        	'price'=>180

        	]);
        $product->save();
         $product= new \App\Product([
        	'imagePath'=>'http://badasshelmetstore.com/wp-content/uploads/Bobafett-HJC-rpha11-Motorcycle-Helmet-3.jpg',
        	'title'=>'Badass Motorcycle Helmets',
        	'description'=>'Badass Motorcycle Helmets',
        	'price'=>55

        	]);
        $product->save();
    }
}
