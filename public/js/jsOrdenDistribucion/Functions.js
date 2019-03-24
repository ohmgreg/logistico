;(function(win){
    var WinFunc = window.LoadFunctions = Logist.OrdenDistribucion = {};
    win.LoadVars = Logist.OrdenDistribucion.vars = {};

    WinFunc._listSilo = function(idSelect){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UN OPCIÓN</option>';
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
        var str_opcion = '<option value="" disabled selected>SELECCIONE UN OPCIÓN</option>';
        var elem = document.getElementById(idSelect);
        Ajax("_listproducts", LoadVars, function(data){
            for (var i = 0; i < data.length; i++) {
                str_opcion += '<option value ="' + data[i]["id"] + '">' + data[i]["nombre"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion);
        })
    }

    WinFunc._listDistribuidora = function(idSelect){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UN OPCIÓN</option>';
        var elem = document.getElementById(idSelect);
        Ajax("_ListDistributor", LoadVars, function(data){
            for (var i = 0; i < data.length; i++) {
                str_opcion += '<option value ="' + data[i]["id"] + '">' + data[i]["nombre"] + "</option>";
            }
            $(elem).empty();
            $(elem).html(str_opcion);
        })
    }

    WinFunc._AddDistributionOrder = function(data){
        Ajax("_AddDistributionOrder", LoadVars, function(data){
            N("#txt_OrdenFechaInicio").val("");
            N("#txt_OrdenFechaFin").val("")
            LoadFunctions._ListDistributionOrder();
        }, true)
    }

    WinFunc._ListDistributionOrder = function(data){
        Ajax("_ListDistributionOrder", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){                
                strTd += '<tr>';
                strTd += isNull(data[i]["codigo"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["codigo"] + '</td>';
                strTd += isNull(data[i]["fechainicio"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["fechainicio"] + " - " + data[i]["fechafin"] + '</td>';
                strTd += isNull(data[i]["cantDist"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["cantDist"] +'</td>';
                // strTd += data[i]["activo"] == 0 ? '<td>NO</td>' : '<td>SI</td>';
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
        $('#ModalWidth').css("width","70%");
        LoadFunctions._listSilo("cmb-silo");
        LoadFunctions._listDistribuidora("cmb-distribuidora");
        LoadFunctions._listproducts("cmb-producto");
        $("#HeadingId").html("ORDEN DE DISTRIBUCION " + LoadVars.name_OrdenDistrib);
        $('#M-Insert-2').modal('show');
    }

    WinFunc._ActivateOrderOfDistribution = function(data){
        Ajax("_ActivateOrderOfDistribution", LoadVars, function(data){
            LoadFunctions._ListDistributionOrder();
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

    WinFunc._DetaleDistributionOrder = function(data){
        Ajax("_DetaleDistributionOrder", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){                
                strTd += '<tr>';                
                strTd += isNull(data[i]["NameDistribuidora"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["NameDistribuidora"] + '</td>';
                strTd += isNull(data[i]["NameProducto"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["NameProducto"] + '</td>';
                strTd += isNull(data[i]["cantidad"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["cantidad"] + '</td>';
                strTd += data[i]["status"] == 0 ? '<td>EN TRANSITO</td>' : '<td>EN ALMACEN</td>';
                strTd += '<td style="text-align: center;">';
                strTd += '<button type="button" data-toggle="tooltip" title="ELIMINAR DETALLE" class="btn btn-danger btn-flat" id="btn_DetalleDelete"><i class="fa fa-trash-o" id =' + data[i]["id"] + '></i></button>';
                strTd += '</td>';
                strTd += '</tr>';            
            }
            defineDataTable("tableOrdenDistribucionDetalle", strTd);
        })
    } 
})(window);