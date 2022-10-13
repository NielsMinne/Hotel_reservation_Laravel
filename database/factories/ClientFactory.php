<?php

namespace Database\Factories;

use App\Models\Room;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Client>
 */
class ClientFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title' => $this->faker->title,
            'firstName' => $this->faker->firstName,
            'lastName' => $this->faker->lastName,
            'email' => $this->faker->unique()->safeEmail(),
            'zip' => $this->faker->numberBetween(1000,9999),
            'address' => $this->faker->streetAddress,
            'city' => $this->faker->city,
            'province' => $this->faker->country,
            // 'image' => $this->faker->image('public/storage/images',640,480, null, false)
        ];
    }
}
