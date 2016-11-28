<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Seal extends Model
{
    protected $fillable = [
        'uid', 'name', 'email', 'proActivity',
        'teamWork', 'deliveryOfResult', 'situation',
    ];
}
