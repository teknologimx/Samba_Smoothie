//Grafica para las ventas de hoy
$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/prop/php/repvenprod/repHoy.php",
        //method: "POST",
        type: "GET",
        success: function(data){
            console.log(data);
            var ganancias= [];
            var ordenes= [];
            for(var i in data){
                ganancias.push(data[i].ganancias);
                ordenes.push(data[i].ordenes);
            }
            var BARCHARTVENTAS= $('#barChartVentasHoy');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: ["09:00 hrs.", "10:00 hrs.", "11:00 hrs.", "12:00 hrs.", "13:00 hrs.","14:00 hrs.","15:00 hrs.","16:00 hrs."],
                    datasets:[
                        {
                            label: "Monto Generado",
                            backgroundColor:[
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)'
                            ],
                            borderColor: [
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)'
                            ],
                            borderWidth: 1,
                            data: ganancias,
                            //data: [65, 50, 80, 120, 81],
                        },
                        {
                            label: "Ordenes",
                            backgroundColor: [
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)'
                            ],
                            borderColor: [
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)'
                            ],
                            borderWidth: 1,
                            data: ordenes,
                            //data: [20, 15, 30, 50, 40],
                        }
                    ]
                }
            });
        },
        error:function(data){
            console.log(data);
        }
    });
});

//Grafica para las ventas de ayer
$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/prop/php/repvenprod/repAyer.php",
        //method: "POST",
        type: "GET",
        success: function(data){
            console.log(data);
            var ganancias= [];
            var ordenes= [];
            for(var i in data){
                ganancias.push(data[i].ganancias);
                ordenes.push(data[i].ordenes);
            }
            var BARCHARTVENTAS= $('#barChartVentasAyer');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: ["09:00 hrs.", "10:00 hrs.", "11:00 hrs.", "12:00 hrs.", "13:00 hrs.","14:00 hrs.","15:00 hrs.","16:00 hrs."],
                    datasets:[
                        {
                            label: "Monto Generado",
                            backgroundColor:[
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)'
                            ],
                            borderColor: [
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)'
                            ],
                            borderWidth: 1,
                            data: ganancias,
                            //data: [65, 50, 80, 120, 81],
                        },
                        {
                            label: "Ordenes",
                            backgroundColor: [
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)'
                            ],
                            borderColor: [
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)'
                            ],
                            borderWidth: 1,
                            data: ordenes,
                            //data: [20, 15, 30, 50, 40],
                        }
                    ]
                }
            });
        },
        error:function(data){
            console.log(data);
        }
    });
});

//Grafica para las ventas de hace 7 dias (por dias)
$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/prop/php/repvenprod/rep7Dias.php",
        //method: "POST",
        type: "GET",
        success: function(data){
            console.log(data);
            var ganancias= [];
            var ordenes= [];
            for(var i in data){
                ganancias.push(data[i].ganancias);
                ordenes.push(data[i].ordenes);
            }
            var BARCHARTVENTAS= $('#barChartVentas7Dias');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes","Sábado","Domingo"],
                    datasets:[
                        {
                            label: "Monto Generado",
                            backgroundColor:[
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)'
                            ],
                            borderColor: [
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)'
                            ],
                            borderWidth: 1,
                            data: ganancias,
                            //data: [65, 50, 80, 120, 81],
                        },
                        {
                            label: "Ordenes",
                            backgroundColor: [
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)'
                            ],
                            borderColor: [
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)'
                            ],
                            borderWidth: 1,
                            data: ordenes,
                            //data: [20, 15, 30, 50, 40],
                        }
                    ]
                }
            });
        },
        error:function(data){
            console.log(data);
        }
    });
});

//Grafica para las ventas de hace 30 dias (por semanas)
$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/prop/php/repvenprod/rep30Dias.php",
        //method: "POST",
        type: "GET",
        success: function(data){
            console.log(data);
            var ganancias= [];
            var ordenes= [];
            for(var i in data){
                ganancias.push(data[i].ganancias);
                ordenes.push(data[i].ordenes);
            }
            var BARCHARTVENTAS= $('#barChartVentas30Dias');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: ["Semana 1", "Semana 2", "Semana 3", "Semana 4"],
                    datasets:[
                        {
                            label: "Monto Generado",
                            backgroundColor:[
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)'
                            ],
                            borderColor: [
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)'
                            ],
                            borderWidth: 1,
                            data: ganancias,
                            //data: [65, 50, 80, 120, 81],
                        },
                        {
                            label: "Ordenes",
                            backgroundColor: [
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)'
                            ],
                            borderColor: [
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)'
                            ],
                            borderWidth: 1,
                            data: ordenes,
                            //data: [20, 15, 30, 50, 40],
                        }
                    ]
                }
            });
        },
        error:function(data){
            console.log(data);
        }
    });
});

//Grafica para las ventas de hace 90 dias (por trimestre)
$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/prop/php/repvenprod/rep90Dias.php",
        //method: "POST",
        type: "GET",
        success: function(data){
            console.log(data);
            var ganancias= [];
            var ordenes= [];
            for(var i in data){
                ganancias.push(data[i].ganancias);
                ordenes.push(data[i].ordenes);
            }
            var BARCHARTVENTAS= $('#barChartVentas90Dias');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: ["Primer mes", "Segundo mes", "Tercer mes"],
                    datasets:[
                        {
                            label: "Monto Generado",
                            backgroundColor:[
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)',
                                'rgba(51, 179, 90, 0.6)'
                            ],
                            borderColor: [
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)',
                                'rgba(51, 179, 90, 1)'
                            ],
                            borderWidth: 1,
                            data: ganancias,
                            //data: [65, 50, 80, 120, 81],
                        },
                        {
                            label: "Ordenes",
                            backgroundColor: [
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)',
                                'rgba(203, 203, 203, 0.6)'
                            ],
                            borderColor: [
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)',
                                'rgba(203, 203, 203, 1)'
                            ],
                            borderWidth: 1,
                            data: ordenes,
                            //data: [20, 15, 30, 50, 40],
                        }
                    ]
                }
            });
        },
        error:function(data){
            console.log(data);
        }
    });
});