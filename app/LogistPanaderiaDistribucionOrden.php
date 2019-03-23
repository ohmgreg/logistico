<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiadistribucionorden extends Model
{
    protected $table = 'logistpanaderiadistribucionorden';
    protected $fillable = [
        'fechainicio',
        'fechafin',
        'codigo',
        'activo',
    ];
}
