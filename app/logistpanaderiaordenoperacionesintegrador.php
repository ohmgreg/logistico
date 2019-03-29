<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaordenoperacionesintegrador extends Model
{
    //logistpanaderiaordenoperacionesintegrador
    protected $table = 'logistpanaderiaordenoperacionesintegrador';
    protected $fillable = [
        'id_OrdenOperacionesAsignacion',
        'id_ClienteAsignacion',                
    ]; 
}
