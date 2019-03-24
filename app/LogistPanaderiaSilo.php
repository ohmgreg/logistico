<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaSilo extends Model
{
    protected $table = 'logistpanaderiasilo';
    protected $fillable = [
                            'nombre',
                            'direccion',
                            'telefono',
                            'correo'
    ];
}
