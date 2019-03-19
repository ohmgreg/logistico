<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogistPanaderiaSilo extends Model
{
    protected $table = 'LogistPanaderiaSilo';
    protected $fillable = [
                        'nombre',
                        'direccion',
                        'telefono',
                        'correo',
    ];
}
