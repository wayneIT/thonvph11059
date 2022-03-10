<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

class ProductFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Product::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $imgName = $this->faker->image(storage_path("app/public/uploads/products"), $width = 640, $height = 480, 'cats', false);
        return [
            'name' => $this->faker->name(),
            'cate_id' => Category::all()->random()->id,
            'image' => $this->faker->imageUrl(),
            'image' => "uploads/products/" . $imgName,
            'price' => $this->faker->numberBetween(10000, 60000),
            'status' => rand(0, 1),
            'quantity' => rand(10, 60),
            'detail' => $this->faker->realText($maxNbChars = 200, $indexSize = 2)
        ];
    }
}
