<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaSiloAlmacen extends Model
{
    protected $table = 'LogistPanaderiaSiloAlmacen';
    protected $fillable = [
                            'id_silo',
                            'id_producto',
                            'cantidad',
                            'merma'
    ];
}
