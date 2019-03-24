<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaordenoperacionesresponsables extends Model
{
    protected $table = 'logistpanaderiaordenoperacionesresponsables';
    protected $fillable = [
        'nombre',
        'telefono',
        'institucion',
        'cargo',
        'correo',
        'validacorreo',
        'validasms',               
    ]; 
}
