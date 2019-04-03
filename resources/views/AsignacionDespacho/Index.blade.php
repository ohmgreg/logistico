@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-12 col-md-offset-0">
        <div class="panel panel-default">
            <div class="panel-heading">ORDEN DE OPERACION ACTIVA NRO: </div>
            <div class="panel-body">
                <table id="tableOrdenDistribucion" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>NOMBRE</th>
                            <th>CONTACTO</th>
                            <th>TELEFONO</th>
                            <th>CANTIDAD ASIGNADA</th>
                            <th>MONTO A CANCELAR</th>
                            <th>DISTRIBUIDORA</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>NOMBRE</th>
                            <th>CONTACTO</th>
                            <th>TELEFONO</th>
                            <th>CANTIDAD ASIGNADA</th>
                            <th>MONTO A CANCELAR</th>
                            <th>DISTRIBUIDORA</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@include('AsignacionDespacho.Confirm')
@include('AsignacionDespacho.Detalle')
@include('AsignacionDespacho.Delete')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsAsignacionDespacho&cssModule=') }}"></script>
@endsection