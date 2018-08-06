function mostrar(id) {
    if (id == "Hoy") {
        $("#Hoy").show();
		$("#Ayer").hide();
        $("#1primB").hide();
		$("#1primC").hide();
    }
 
	if (id == "Ayer") {
         $("#Hoy").hide();
		$("#Ayer").show();
        $("#1primB").hide();
		$("#1primC").hide();
    }
	if (id == "1primB") {
         $("#Hoy").hide();
		$("#Ayer").hide();
        $("#1primB").show();
		$("#1primC").hide();
    }
	if (id == "1primC") {
         $("#Hoy").hide();
		$("#Ayer").hide();
        $("#1primB"). hide();
		$("#1primC"). show();
    }
}