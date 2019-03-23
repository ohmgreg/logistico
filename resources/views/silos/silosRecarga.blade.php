@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">RECARGA DE SILOS</div>
            <div class="modal-body">
                <div><label>SELECCIONE UN SILO</label><select id='cmb-silo' class="form-control"><option value="" disabled selected>SELECCIONE UN OPCIÓN</option></select></div>
                <div><label>SELECCIONE UN PRODUCTO</label><select id='cmb-producto' class="form-control"><option value="" disabled selected>SELECCIONE UN OPCIÓN</option></select></div>
                <div class="form-group">
                    <label>CANTIDAD:</label>
                    <div class="input-group">
                        <div class="input-group-addon"><i class="fa fa-pencil-square-o"></i></div>
                        <input class="form-control input-sm ctrUpdate" type="text" pattern="[1-9]" placeholder="INGRESE LAS CANTIDADES EN TONELADAS" id=txt_SiloCantidadRecarga >
                    </div>
                </div>
                <div class="form-group">                        
                    <label>FECHA DE LA RECARGA:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                        <input class="form-control input-sm datepicker ctrUpdate" type="text" placeholder="" id=txt_SiloFechaRecarga readonly>
                    </div>
                </div>
                <div class="form-group">
                    <label>OBSERVACION</label>
                    <textarea class="form-control noresize" rows="3" placeholder="" id='txt_SiloObservacion'></textarea>
                </div>                
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btnSilosReload">RECARGAR EL SILO</button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="panel panel-default">
            <div class="panel-heading">REGISTRO DE RECARGAS</div>
            <div class="panel-body">
                <table id="tableSilosRecarga" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>FECHA</th>
                            <th>OPERACION</th>                            
                            <th>MERMA (Kg)</th>
                            <th>PRODUCTO</th>
                            <th>CANTIDAD (Ton)</th>
                            <th>MANUFACTURA (Sacos)</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>FECHA</th>
                            <th>OPERACION</th>                            
                            <th>MERMA (Kg)</th>
                            <th>PRODUCTO</th>
                            <th>CANTIDAD (Ton)</th>
                            <th>MANUFACTURA (Sacos)</th>
                            <th id="thOperaciones">ACCION</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@include('silos.silosRecargaMerma')
@include('silos.silosRecargaManufactura')


@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsSilos&cssModule=') }}"></script>
@endsection