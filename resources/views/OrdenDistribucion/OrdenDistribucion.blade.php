@extends('layouts.desktop')
@section('content')
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">ORDEN DE DISTRIBUCION</div>
            <div class="modal-body">
                <div class="form-group">                        
                    <label>FECHA DE INICIO:</label>
                    <div class="input-group">                                
                        <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                        <input class="form-control input-sm datepicker ctrUpdate" type="text" placeholder="" id=txt_OrdenFechaInicio readonly>
                    </div>
                </div>
                <div class="form-group">                        
                        <label>FECHA FINAL:</label>
                        <div class="input-group">                                
                            <div class="input-group-addon"><i class="fa fa-calendar"></i></div>
                            <input class="form-control input-sm datepicker ctrUpdate" type="text" placeholder="" id=txt_OrdenFechaInicio readonly>
                        </div>
                    </div>           
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" id="btnSilosReload">RECARGAR EL SILO</button>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-8 col-md-offset-2">
        <div class="panel panel-default">
            <div class="panel-heading">REGISTRO DE RECARGAS</div>
            <div class="panel-body">
                <table id="tableSilosRecarga" class="table" cellspacing="0">
                    <thead>
                        <tr>
                            <th>RECARGA</th>
                            <th id="thOperaciones">OPERACIONES</th>             
                        </tr>
                    </thead>
                    <tbody></tbody>
                    <tfoot>
                        <tr>
                            <th>RECARGA</th>
                            <th id="thOperaciones">OPERACIONES</th>             
                        </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

@include('silos.silosRecargaMerma')

@endsection
@section('script')
<script type="text/javascript" src="{{ asset('js/dist/netInit.js?ver=1.0&jsModule=jsOrdenDistribucion&cssModule=') }}"></script>
@endsection