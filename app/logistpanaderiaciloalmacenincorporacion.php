<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaciloalmacenincorporacion extends Model
{
    protected $table = 'logistpanaderiaciloalmacenincorporacion';
    protected $fillable = [
                            'fecha',
                            'cantidad',
                            'nota',
                            'id_silo',
                            'id_producto',
    ];
}
