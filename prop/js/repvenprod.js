function mostrar(id) {
    if (id == "Hoy") {
        $("#Hoy").show();
		$("#Ayer").hide();
        $("#1primB").hide();
        $("#1primC").hide();
        $("#1primD"). hide();
    }
 
	if (id == "Ayer") {
         $("#Hoy").hide();
		$("#Ayer").show();
        $("#1primB").hide();
        $("#1primC").hide();
        $("#1primD"). hide();
    }
	if (id == "1primB") {
         $("#Hoy").hide();
		$("#Ayer").hide();
        $("#1primB").show();
        $("#1primC").hide();
        $("#1primD"). hide();
    }
	if (id == "1primC") {
         $("#Hoy").hide();
		$("#Ayer").hide();
        $("#1primB"). hide();
        $("#1primC"). show();
        $("#1primD"). hide();
    }
    if (id == "1primD") {
        $("#Hoy").hide();
       $("#Ayer").hide();
       $("#1primB"). hide();
       $("#1primC"). hide();
       $("#1primD"). show();
   }
}
function mostrarSucursal(id){
    switch(id){
        case "SC": $("#SC").show();
                    $("#FC").hide();
                    $("#CB").hide();
                    break;
        case "FC": $("#SC").hide();
                    $("#FC").show();
                    $("#CB").hide();
                    break;
        case "CB": $("#SC").hide();
                    $("#FC").hide();
                    $("#CB").show();
                    break;

    }
}