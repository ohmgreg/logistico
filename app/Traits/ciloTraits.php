<?php

namespace App\traits;

use DB;
use App\logistpanaderiacilo;
use App\logistpanaderiaciloalamcen;
use App\logistpanaderiaciloalmacenincorporacion;

trait ciloTraits
{

    public function ListCilo()
    {

        return logistpanaderiacilo::all();
    }

    public function showCilo($data)
    {
        return logistpanaderiacilo::where('id', $data->id)->get();
    }

    public function addProductCilo($data)
    {
        logistpanaderiaciloalmacenincorporacion::create([
            'fecha' => $data['fecha'],
            'cantidad' => $data['cantidad'],
            'nota' => $data['nota'],
            'id_cilo' => $data['nota'],
            'id_producto' => $data['id_producto'],
        ]);

        $ExistProduct = logistpanaderiaciloalamcen::where('id_producto', $data['id_producto'])->where('id_cilo', $data['id_cilo'])->count()->get();

        if ($ExistProduct = 1) {
            $id_logistpanaderiaciloalamcen = logistpanaderiaciloalamcen::where('id_producto', $data['id_producto'])->where('id_cilo', $data['id_cilo'])->value('id');
            $ExistenciaProducto = logistpanaderiaciloalamcen::where('id_producto', $data['id_producto'])->where('id_cilo', $data['id_cilo'])->value('cantidad');
            $ExistenciaProducto = $ExistenciaProducto + $data['cantidad'];
            return logistpanaderiaciloalamcen::where('id', $id_logistpanaderiaciloalamcen)
                ->update([
                    'cantidad' => $ExistenciaProducto,
                ]);
        } else {
            return logistpanaderiaciloalamcen::create([
                'id_cilo' => $data['id_cilo'],
                'id_producto' => $data['id_producto'],
                'cantidad' =>  $data['cantidad'],
            ]);
        }
    }

    public function updateMerma($data){

        logistpanaderiaciloalmacenincorporacion::where('id',$data['id_incorporacion'])
        ->update([
                'merma'=>$data['merma']
        ]);
        $id_logistpanaderiaciloalamcen = logistpanaderiaciloalamcen::where('id_producto', $data['id_producto'])->where('id_cilo', $data['id_cilo'])->value('id');
        $ExistenciaProducto = logistpanaderiaciloalamcen::where('id_producto', $data['id_producto'])->where('id_cilo', $data['id_cilo'])->value('cantidad');
        $ExistenciaProducto = $ExistenciaProducto - $data['merma'];
        return logistpanaderiaciloalamcen::where('id', $id_logistpanaderiaciloalamcen)
        ->update([
            'cantidad' => $ExistenciaProducto,
        ]);
    }
// Fin del traits
}



