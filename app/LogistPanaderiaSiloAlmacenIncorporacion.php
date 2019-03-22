<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaSiloAlmacenIncorporacion extends Model
{
    protected $table = 'LogistPanaderiaSiloAlmacenIncorporacion';
    protected $fillable = [
                            'fecha',
                            'cantidad',
                            'nota',
                            'id_Silo',
                            'id_producto',
    ];
}
