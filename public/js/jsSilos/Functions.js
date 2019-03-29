;(function(win){
    var WinFunc = window.LoadFunctions = Logist.SilosRecarga = {};
    win.LoadVars = Logist.SilosRecarga.vars = {};

    WinFunc._listSilo = function(idSelect){
        var str_opcion = '<option value="" disabled selected>SELECCIONE UN OPCIÓN</option>';
        var elem = document.getElementById(idSelect);
        Ajax("_listSilo", LoadVars, function(data){
            for (var i = 0; i < data.length; i++) {
                str_opcion += '<option value ="' + data[i]["id"] + '">' + data[i]["nombre"] + "</option>";
            }
            $(".table tbody").empty();
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
            $(".table tbody").empty();
            $(elem).empty();
            $(elem).html(str_opcion);
        })
    }

    WinFunc._listSiloRecarga = function(id_Silo){
        Ajax("_listSiloRecarga", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){                
                strTd += '<tr>';
                strTd += isNull(data[i]["fecha"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["fecha"] + '</td>';
                strTd += isNull(data[i]["cod_recarga"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["cod_recarga"] + '</td>';
                strTd += isNull(data[i]["merma"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["merma"] +'</td>';
                strTd += isNull(data[i]["nombre"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["nombre"] + '</td>';
                strTd += isNull(data[i]["existenciaTN"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["existenciaTN"] / 1000 + '</td>';
                strTd += isNull(data[i]["manufactura"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["manufactura"] + '</td>';
                strTd += '<td style="text-align: left;">';
                if(isNull(data[i]["manufactura"])|| parseInt(data[i]["existenciaTN"], 10) > 50){
                    strTd += '<button type="button" data-toggle="tooltip" title="MANUFACTURAR" class="btn btn-primary btn-flat" id="btn_manufactura"><i class="fa fa-industry" id =' + data[i]["id"] + '></i></button>';
                }
                if(isNull(data[i]["merma"])){
                    strTd += '<button type="button" data-toggle="tooltip" title="ASIGNAR MERMA" class="btn btn-danger btn-flat" id="btn_merma"><i class="fa fa-minus-circle" id =' + data[i]["id"] + '></i></button>';
                }
                strTd += '</td>';
                strTd += '</tr>';            
            }
            defineDataTable("tableSilosRecarga", strTd);
        })
    }

    WinFunc._ShowMerma = function(data){
        Ajax("_ShowMerma", LoadVars, function(data){
            LoadVars.merma = isNull(data[0]["merma"]) ? "" : data[0].merma;
            LoadVars.id_producto = data[0].id_producto;
            LoadVars.cantidad = data[0].cantidad;
            $("#txt_SiloMerma").val(LoadVars.merma);
            LoadVars.merma == "" ? $('#M-Insert').modal('show') : Notify("ESTA RECARGA YA TIENE UNA MERMA ASIGNADA DE: " + LoadVars.merma + " Kg.", "danger");
            
        })
    }

    WinFunc._ShowManufactura = function(data){
        $('#M-Insert-1').modal('show')
    }

    WinFunc._updateMerma = function(data){
        Ajax("_updateMerma", LoadVars, function(data){
            WinFunc._listSiloRecarga(LoadVars);
            $('#M-Insert').modal('hide');
        }, true)
    }

    WinFunc._updateManufactura = function(data){
        Ajax("_updateManufactura", LoadVars, function(data){
            $("#txt_SiloManufactura").val("");
            WinFunc._listSiloRecarga(LoadVars);            
            $('#M-Insert-1').modal('hide');
        }, true)
    }

    WinFunc._AddProductSilo = function(data){
        Ajax("_AddProductSilo", LoadVars, function(data){
            WinFunc._listSiloRecarga(LoadVars);
            InitControl();
            LoadFunctions._listSilo("cmb-silo");
            LoadFunctions._listproducts("cmb-producto");
        }, true)
    }

})(window);