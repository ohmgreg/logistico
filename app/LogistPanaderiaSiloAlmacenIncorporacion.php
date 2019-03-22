<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaSiloAlmacenIncorporacion extends Model
{
    protected $table = 'LogistPanaderiaSiloAlmacenIncorporacion';
    protected $fillable = [
                            'cod_recarga',
                            'id_Silo',
                            'id_producto',
                            'fecha',
                            'cantidad',
                            'merma',
                            'nota'
    ];
}
