<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\User::class, function (Faker\Generator $faker) {
    static $password;

    return [
        'name' => $faker->name,
        'email' => $faker->unique()->safeEmail,
        'password' => $password ?: $password = bcrypt('secret'),
        'remember_token' => str_random(10),
    ];
});

$factory->define(App\Seal::class, function (Faker\Generator $faker) {
   return [
       'uid' => $faker->md5,
       'name' => $faker->name,
       'email' => $faker->email,
       'proActivity' => $faker->numberBetween(0, 10),
       'teamWork' => $faker->numberBetween(0, 10),
       'deliveryOfResult' => $faker->numberBetween(0, 10),
       'situation' => $faker->numberBetween(0,1),
   ];
});

$factory->define(App\SealTelecom::class, function (Faker\Generator $faker) {
    return [
        'uid' => $faker->md5,
        'name' => $faker->name,
        'email' => $faker->email,
        'commitment' => $faker->numberBetween(0, 10),
        'proActivity' => $faker->numberBetween(0, 10),
        'superation' => $faker->numberBetween(0, 10),
        'teamWork' => $faker->numberBetween(0, 10),
        'planningAndOrganization' => $faker->numberBetween(0, 10),
        'situation' => $faker->numberBetween(0,1),
    ];
});
