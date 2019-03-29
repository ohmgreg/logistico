<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class logistpanaderiaOrdenOperacionTemp extends Model
{

        //logistpanaderiaordenoperacionesintegrador
        protected $table = 'logistpanaderiaOrdenOperacionTemp';
        protected $fillable = [
            'Cantidad',
            'id_Producto',
            'id_Panaderia',
            'id_OrdenOperaciones',
            'id_distribuidora',
            'id_asociado',              
        ]; 




}
