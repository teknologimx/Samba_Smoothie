function vertablas(id) {
    if (id == "vtn1") {
        $("#vtn1").show();
		$("#vtn2").hide();
        $("#vtn3").hide();
    }
 
	if (id == "vtn2") {
         $("#vtn1").hide();
		$("#vtn2").show();
        $("#vtn3").hide();
    }
	if (id == "vtn3") {
         $("#vtn1").hide();
		$("#vtn2").hide();
        $("#vtn3").show();
    }
}