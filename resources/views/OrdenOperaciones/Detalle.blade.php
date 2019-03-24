@extends('Modals.M-Insert-2')
@section('content-M2')
<div class="row">
    <div class="col-md-12 col-md-offset-0">
        <div class="panel panel-default">
            <div class="panel-heading">PANADERIAS A DESPACHAR</div>
            <div class="panel-body">
                <table id="tableOrdenDistribucionDetalle" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ACTIVAR</th>
                            <th>PANADERIA</th>
                            <th>ASIGNACION (Sacos)</th>
                            <th>ULTIMO DESPACHO</th>
                            <th>FRECUENCIA (Dias)</th>
                            <th>ESTATUS</th>  
                            <th>CANTIDAD</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>ACTIVAR</th>
                            <th>PANADERIA</th>
                            <th>ASIGNACION (Sacos)</th>
                            <th>ULTIMO DESPACHO</th>
                            <th>FRECUENCIA (Dias)</th>
                            <th>ESTATUS</th>  
                            <th>CANTIDAD</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection

@section('footer-M2')
    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
    <button type="button" class="btn btn-primary" id="btnPanaderiaUpdate">PROCESAR</button>
@endsection