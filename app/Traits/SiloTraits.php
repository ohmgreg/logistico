<?php

namespace App\traits;

use DB;
use App\LogistPanaderiaSilo;
use App\LogistPanaderiaSiloAlamcen;
use App\LogistPanaderiaSiloAlmacenIncorporacion;

trait SiloTraits
{

    public function listSilo()
    {
        return LogistPanaderiaSilo::all();
    }

    public function ShowSilo($data)
    {
        return LogistPanaderiaSilo::where('id', $data->id)->get();
    }

    public function AddProductSilo($data)
    {
        LogistPanaderiaSiloAlmacenIncorporacion::create([
            'fecha' => $data['fecha'],
            'cantidad' => $data['cantidad'],
            'nota' => $data['nota'],
            'id_Silo' => $data['nota'],
            'id_producto' => $data['id_producto'],
        ]);

        $ExistProduct = LogistPanaderiaSiloAlamcen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->count()->get();

        if ($ExistProduct = 1) {
            $id_LogistPanaderiaSiloAlamcen = LogistPanaderiaSiloAlamcen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('id');
            $ExistenciaProducto = LogistPanaderiaSiloAlmacen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('cantidad');
            $ExistenciaProducto = $ExistenciaProducto + $data['cantidad'];
            return LogistPanaderiaSiloAlmacen::where('id', $id_LogistPanaderiaSiloAlamcen)
                ->update([
                    'cantidad' => $ExistenciaProducto,
                ]);
        } else {
            return LogistPanaderiaSiloAlamcen::create([
                'id_Silo' => $data['id_Silo'],
                'id_producto' => $data['id_producto'],
                'cantidad' =>  $data['cantidad'],
            ]);
        }
    }

    public function updateMerma($data){

        logistpanaderiaSiloalmacenincorporacion::where('id',$data['id_incorporacion'])
        ->update([
                'merma'=>$data['merma']
        ]);
        $id_LogistPanaderiaSiloAlamcen = LogistPanaderiaSiloAlamcen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('id');
        $ExistenciaProducto = LogistPanaderiaSiloAlamcen::where('id_producto', $data['id_producto'])->where('id_Silo', $data['id_Silo'])->value('cantidad');
        $ExistenciaProducto = $ExistenciaProducto - $data['merma'];
        return LogistPanaderiaSiloAlamcen::where('id', $id_LogistPanaderiaSiloAlamcen)
        ->update([
            'cantidad' => $ExistenciaProducto,
        ]);
    }
// Fin del traits
}



