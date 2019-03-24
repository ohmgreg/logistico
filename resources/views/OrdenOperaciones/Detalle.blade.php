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
                            <th>DISTRIBUIDORA</th>
                            <th>PRODUCTO</th>
                            <th>CANTIDAD (SACOS)</th>
                            <th>ESTATUS</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>DISTRIBUIDORA</th>
                            <th>PRODUCTO</th>
                            <th>CANTIDAD (SACOS)</th>
                            <th>ESTATUS</th>
                            <th id="thOperaciones">ACCION</th>             
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
@endsection