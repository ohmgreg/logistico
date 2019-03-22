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
                strTd += isNull(data[i]["cod_recarga"]) ? '<td></td>' : '<td width="400px">' + data[i]["cod_recarga"] + '</td>';
                strTd += '<td style="text-align: center;">'
                strTd += '<button type="button" class="btn btn-primary btn-flat" id="btn_merma"><i class="" id = ' + data[i]["id"] + '>MERMA</i></button>';
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

    WinFunc._updateMerma = function(data){
        Ajax("_updateMerma", LoadVars, function(data){
            $('#M-Insert').modal('hide');
        }, true)
    }

    WinFunc._AddProductSilo = function(data){
        Ajax("_AddProductSilo", LoadVars, function(data){
            WinFunc._listSiloRecarga(N("#cmb-silo").val());
        }, true)
    }

})(window);