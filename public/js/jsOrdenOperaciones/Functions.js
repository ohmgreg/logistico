;(function(win){
    var WinFunc = window.LoadFunctions = Logist.OrdenDistribucion = {};
    win.LoadVars = Logist.OrdenDistribucion.vars = {};

    WinFunc._listSilo = function(idSelect){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(idSelect);
        Ajax("_listSilo", LoadVars, function(data){
            for (var i = 0; i < data.length; i++) {
                str_opcion += '<option value ="' + data[i]["id"] + '">' + data[i]["nombre"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion); 
        })
    }

    WinFunc._listproducts = function(idSelect){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(idSelect);
        Ajax("_listproducts", LoadVars, function(data){
            for (var i = 0; i < data.length; i++) {
                str_opcion += '<option value ="' + data[i]["id"] + '">' + data[i]["nombre"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion);
        })
    }

    WinFunc._DistributionOrderList = function(idSelect){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(idSelect);
        Ajax("_DistributionOrderList", LoadVars, function(data){
            for (var i = 0; i < data.length; i++) {
                str_opcion += '<option value ="' + data[i]["id"] + '">' + data[i]["codigo"] + " (" + data[i]["fechainicio"] + " - " + data[i]["fechafin"] + ")</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion);
        })
    }

    WinFunc._listDistribuidora = function(idSelect){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(idSelect);
        Ajax("_ListDistributor", LoadVars, function(data){
            for (var i = 0; i < data.length; i++) {
                str_opcion += '<option value ="' + data[i]["id"] + '">' + data[i]["nombre"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion);
        })
    }

    WinFunc._ListResponsibleOrderofOperations = function(idSelect){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UNA OPCIÓN</option>';
        var elem = document.getElementById(idSelect);
        Ajax("_ListResponsibleOrderofOperations", LoadVars, function(data){
            for (var i = 0; i < data.length; i++) {
                str_opcion += '<option value ="' + data[i]["id"] + '">' + data[i]["nombre"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion);
        })
    }

    WinFunc._AddOrderOfOperation = function(data){
        Ajax("_AddOrderOfOperation", LoadVars, function(data){
            N("#txt_OrdenFechaInicio").val("");
            N("#txt_OrdenFechaFin").val("");
            LoadFunctions._ListResponsibleOrderofOperations("cmb-responsable");
            LoadFunctions._listOrderOfOperation();
            LoadFunctions._listOrderOfOperation();
        }, true)
    }

    WinFunc._listOrderOfOperation = function(data){
        Ajax("_listOrderOfOperation", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){                
                strTd += '<tr>';
                strTd += isNull(data[i]["codigo"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["codigo"] + '</td>';
                strTd += isNull(data[i]["fechainicio"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["fechainicio"] + " - " + data[i]["fechafin"] + '</td>';
                strTd += isNull(data[i]["nombre"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["nombre"] +'</td>';
                strTd += isNull(data[i]["telefono"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["telefono"] +'</td>';
                strTd += '<td style="text-align: left;">';
                if(data[i]["activo"] == 0){
                    // strTd += '<button type="button" data-toggle="tooltip" title="ACTIVAR ORDEN DE OPERACION" class="btn btn-primary btn-flat" id="btn_swOrdenActiva"><i class="fa fa-check" id =' + data[i]["id"] + '></i></button>';
                }
                strTd += '<button type="button" data-toggle="tooltip" title="AGREGAR DETALLE DE LA ORDEN DE OPERACION" class="btn btn-primary btn-flat" id="btn_DetalleAdd"><i class="fa fa-pencil-square-o" id =' + data[i]["id"] + '></i></button>';
                strTd += '</td>';
                strTd += '</tr>';            
            }
            defineDataTable("tableOrdenDistribucion", strTd);
        })
    }

    WinFunc._ShowConfirm = function(){
        $('#M-Insert').modal('show');
    }
    
    WinFunc._ShowDettalle = function(){
        $('#ModalWidth').css("width","80%");
        $('#M-Insert-2').modal('show');
    }

    WinFunc._ActivateOrderOfDistribution = function(data){
        Ajax("_ActivateOrderOfDistribution", LoadVars, function(data){
            LoadFunctions._listOrderOfOperation();
            $('#M-Insert').modal('hide');
        }, true)
    }

    WinFunc._AddWarehouseDistributor = function(data){
        Ajax("_AddWarehouseDistributor", LoadVars, function(data){
            FormControlInit("#FormOrdenDetalle");
            LoadFunctions._listSilo("cmb-silo");
            LoadFunctions._listDistribuidora("cmb-distribuidora");
            LoadFunctions._listproducts("cmb-producto");
            LoadFunctions._DetaleDistributionOrder(LoadVars);            
        }, true)
    }

    WinFunc._DelWarehouseDistributor = function(data){
        Ajax("_DelWarehouseDistributor", LoadVars, function(data){
            LoadFunctions._DetaleDistributionOrder(LoadVars);
            $('#M-Insert-1').modal('hide');     
        }, true)
    }

    WinFunc._ExistenceOfSilo = function(data){
        Ajax("_ExistenceOfSilo", LoadVars, function(data){
            LoadVars.SiloExistencia = data;
        })
    }

    WinFunc._AsigClientOrderofOperations = function(data){
        Ajax("_AsigClientOrderofOperations", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){                
                strTd += '<tr>';
                if(data[i]["diastranscurridos"] <= 0){
                    strTd += '<td>';
                    strTd += '<div class="[ form-group ]"><input type="checkbox" name="sw_' + i + '" id="sw_' + i + '" autocomplete="off" class="sw_"/>';
                    strTd += '<div class="[ btn-group ]"><label for="sw_' + i + '" class="[ btn btn-primary ]"><span class="[ glyphicon glyphicon-ok ]"></span><span></span></label></div></div>';
                    strTd += '</td>';
                }else{
                    strTd += '<td></td>';
                }
                strTd += isNull(data[i]["NombrePanaderia"]) ? '<td></td>' : '<td style="text-align: left;">' + data[i]["NombrePanaderia"] + '</td>';
                strTd += isNull(data[i]["cantidad"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["cantidad"] + '</td>';
                strTd += isNull(data[i]["UltimoDespacho"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["UltimoDespacho"] + '</td>';
                strTd += isNull(data[i]["frecuencia"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["frecuencia"] + '</td>';
                var status = data[i]["suspendido"] == 0 ? "ACTIVO" : "SUSPENDIDO";
                strTd += '<td style="text-align: center;">' + status + '</td>';                
                strTd += '<td style="text-align: center;">';
                strTd += '<input class="form-control input-sm ctrUpdate1" type="text" placeholder="" id="txt_' + i + '" disabled="">';
                strTd += '</td>';
                strTd += '</tr>';            
            }
            defineDataTable("tableOrdenDistribucionDetalle", strTd);
        })
    }



















    
})(window);