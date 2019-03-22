window.Insert = function(){
    N("#btnSilosReload").click(function(){
		if(checkInput(N("#cmb-silo").val(), "DEBE SELECCIONAR UN SILO.", "danger")){return};
		if(checkInput(N("#cmb-producto").val(), "DEBE SELECCIONAR UN PRODUCTO.", "danger")){return};
		if(checkInput(N("#txt_SiloCantidadRecarga").val(), "DEBE INGRESAR UNA CANTIDAD.", "danger")){return};
        if(checkInput(N("#txt_SiloFechaRecarga").val(), "DEBE INGRESAR UNA FECHA.", "danger")){return};
        var a = {
            fecha       : N("#txt_SiloFechaRecarga").val(),
            cantidad    : N("#txt_SiloCantidadRecarga").val() * 1000,
            nota        : N("#txt_SiloObservacion").val(),
            id_Silo     : N("#cmb-silo").val(),
            id_producto : N("#cmb-producto").val() 
        }
        $.ajax({
            url: "_AddProductSilo",
            headers: {
                'X-CSRF-TOKEN': getToken()
            },
            type: 'post',
            dataType: 'json',
            data: a,
            success: function(data) {
                console.log(data);
            }
        });        















    });


}