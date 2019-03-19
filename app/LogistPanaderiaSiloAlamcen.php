<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaSiloAlamcen extends Model
{
    protected $table = 'LogistPanaderiaSiloAlamcen';
    protected $fillable = [
        'id_silo',
        'id_producto',
        'cantidad',
        'merma',
    ];
}
