<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaSiloAlmacenIncorporacion extends Model
{
    protected $table = 'logistpanaderiasiloalmacenincorporacion';
    protected $fillable = [
                            'cod_recarga',
                            'id_Silo',
                            'id_producto',
                            'manufactura',
                            'existencia',
                            'fecha',
                            'cantidad',
                            'merma',
                            'nota'
    ];
}
