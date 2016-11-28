<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SealTelecom extends Model
{
    protected $fillable = [
        'uid', 'name', 'email', 'commitment', 'proActivity',
        'superation', 'teamWork', 'planningAndOrganization',
        'situation',
    ];
}
