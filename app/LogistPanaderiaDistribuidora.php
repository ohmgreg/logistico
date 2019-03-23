<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiadistribuidora extends Model
{
    protected $table = 'logistpanaderiadistribuidora';
    protected $fillable = [
        'nombre',
        'direccion',
        'correo',
        'telefono',
        'validacorreo',            
    ]; 
}
