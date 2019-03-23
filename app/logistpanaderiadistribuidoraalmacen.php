<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiadistribuidoraalmacen extends Model
{
    
    protected $table = 'logistpanaderiadistribuidoraalmacen';
    protected $fillable = [
        'id_producto',
        'preciocompra',
        'precioventa',
        'id_OrdendeDistribucion',
        'cantidad',
        'existencia',
        'id_Distribuidora',
        'merma',
        'status',
        'id_Silo',
                   
]; 

}    