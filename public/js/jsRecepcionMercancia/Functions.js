;(function(win){
    var WinFunc = window.LoadFunctions = Logist.RecepcionMercancia = {};
    win.LoadVars = Logist.RecepcionMercancia.vars = {};

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

    WinFunc._ListProductsInTransit = function(data){
        Ajax("_ListProductsInTransit", LoadVars, function(data){
            var strTd = "";
            for(var i = 0; i < data.length; i++){                
                strTd += '<tr>';
                strTd += isNull(data[i]["NameSilo"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["NameSilo"] + '</td>';
                strTd += isNull(data[i]["NameProducto"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["NameProducto"] + '</td>';
                strTd += isNull(data[i]["existencia"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["existencia"] +'</td>';
                strTd += isNull(data[i]["cantidad"]) ? '<td></td>' : '<td style="text-align: center;">' + data[i]["cantidad"] +'</td>';
                strTd += '<td style="text-align: center;">';
                strTd += '<button type="button" data-toggle="tooltip" title="CONFIRMAR LA RECEPCION" class="btn btn-primary btn-flat" id="btn_RecepcionMercancia"><i class="fa fa-check" id =' + data[i]["id"] + '></i></button>';
                strTd += '</td>';
                strTd += '</tr>';            
            }
            defineDataTable("tableRecepcionMercancia", strTd);
        })
    }

    WinFunc._ProductReception = function(data){
        Ajax("_ProductReception", LoadVars, function(data){
            LoadFunctions._ListProductsInTransit(LoadVars);
            $('#M-Insert').modal('hide');
        }, true)
    }
    
})(window);