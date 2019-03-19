<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiacilo extends Model
{
    protected $table = 'logistpanaderiacilo';
    protected $fillable = [
                        'nombre',
                        'direccion',
                        'telefono',
                        'correo',
    ];
}
