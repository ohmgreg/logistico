<?php

namespace App\Traits;
use DB;
use App\logistpanaderiaordenoperaciones;
use App\logistpanaderiaordenoperacionesasignaresponsables;
use App\logistpanaderiaordenoperacionesresponsables;
use App\LogistConfig;
use App\LogistPanaderiaDistribucionOrden;
use Carbon\Carbon;


trait OrderOfOperationTrais
{
    public function listOrderOfOperation(){       
    $sql_string = "SELECT
    logistpanaderiaordenoperaciones.id,
    logistpanaderiaordenoperaciones.fechainicio,
    logistpanaderiaordenoperaciones.fechafin,
    logistpanaderiaordenoperaciones.codigo,
    logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones,
    logistpanaderiaordenoperacionesasignaresponsables.id_Responsable,
    logistpanaderiaordenoperacionesresponsables.nombre,
    logistpanaderiaordenoperacionesresponsables.telefono,
    logistpanaderiaordenoperacionesresponsables.institucion
    FROM
    logistpanaderiaordenoperacionesasignaresponsables
    INNER JOIN logistpanaderiaordenoperacionesresponsables ON logistpanaderiaordenoperacionesresponsables.id = logistpanaderiaordenoperacionesasignaresponsables.id_Responsable
    INNER JOIN logistpanaderiaordenoperaciones ON logistpanaderiaordenoperaciones.id = logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones";
    return DB::select($sql_string);
}

public function ShowOrderOfOperation($data){
    $sql_string = "SELECT
    logistpanaderiaordenoperaciones.id,
    logistpanaderiaordenoperaciones.fechainicio,
    logistpanaderiaordenoperaciones.fechafin,
    logistpanaderiaordenoperaciones.codigo,
    logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones,
    logistpanaderiaordenoperacionesasignaresponsables.id_Responsable,
    logistpanaderiaordenoperacionesresponsables.nombre,
    logistpanaderiaordenoperacionesresponsables.telefono,
    logistpanaderiaordenoperacionesresponsables.institucion
    FROM
    logistpanaderiaordenoperacionesasignaresponsables
    INNER JOIN logistpanaderiaordenoperacionesresponsables ON logistpanaderiaordenoperacionesresponsables.id = logistpanaderiaordenoperacionesasignaresponsables.id_Responsable
    INNER JOIN logistpanaderiaordenoperaciones ON logistpanaderiaordenoperaciones.id = logistpanaderiaordenoperacionesasignaresponsables.id_OrdenOperaciones
    WHERE
    logistpanaderiaordenoperacionesresponsables.id = " . $data->id_OrdenOperaciones;    
    return DB::select($sql_string);
}

public function AddOrderOfOperation($data){

    $count_op = logistConfig::value('OrdenOperacion') + 1;
    if ((strlen(strval($count_op))) == 1) {$count_op_str = '0'. strval($count_op);}
    if ((strlen(strval($count_op))) == 2) {$count_op_str = '00'. strval($count_op);}
    if ((strlen(strval($count_op))) == 3) {$count_op_str = '000'. strval($count_op);}

    $date = Carbon::now();
    $date = $date->format('Y');
    $cod_op = 'OP-'. $date . '-'. $count_op_str;

    $op = logistpanaderiaordenoperaciones::create([
        'fechainicio' => $data->fechainicio,
        'fechafin' => $data->fechafin,
        'codigo' => $cod_op,
        //'codigo' => 'asef-009',
        'id_OrdenDistribucion' => $data->id_OrdenDistribucion,     
    ]);

    logistConfig::where('id','=','1')->update([
        'OrdenOperacion' =>  $count_op,
    ]);

    return logistpanaderiaordenoperacionesasignaresponsables::create([
        'id_OrdenOperaciones' => $op->id,
        'id_Responsable' => $data->id_responsable,
    ]);
}

public function UpdateResponsableOrderOfOperation($data){
    return logistpanaderiaordenoperacionesasignaresponsables::where('id_OrdenOperaciones','=',$data->id_OrdenOperaciones)
    ->update([
        'id_Responsable' => $data->id_responsable,
    ]);
}

public function ActiveOrderOfOperation($data){
    logistpanaderiaordenoperaciones::where('active', '=',1)->update(['active' => 0]);
    return logistpanaderiaordenoperaciones::where('id', '=',$data->id_OrdenOperaciones)->update(['active' => 1]);
}

public function ListResponsibleOrderofOperations(){
    return logistpanaderiaordenoperacionesresponsables::all();
}

public function DistributionOrderList(){
    return LogistPanaderiaDistribucionOrden::all();
}



// fin del trait
}