//Grafica para las ventas de hoy
$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/prop/php/repvenestab/rephoy.php",
        type: "GET",
        success: function(data){
            console.log(data);
            var establecimiento= [];
            var monto= [];
            var ordenes= [];
            for(var i in data){
                establecimiento.push(data[i].est);
                monto.push(data[i].precTotal);
                ordenes.push(data[i].cantTotal);
            }
            var BARCHARTVENTAS= $('#barChartVentasHoy');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: establecimiento,
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
                            data: monto,
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
        url:"http://localhost/Samba_Smoothie/prop/php/repvenestab/repAyer.php",
        //method: "POST",
        type: "GET",
        success: function(data){
            var establecimiento= [];
            var monto= [];
            var ordenes= [];
            for(var i in data){
                establecimiento.push(data[i].est);
                monto.push(data[i].precTotal);
                ordenes.push(data[i].cantTotal);
            }
            var BARCHARTVENTAS= $('#barChartVentasAyer');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: establecimiento,
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
                            data: monto,
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

//Grafica para las ventas de hace 7 dias
$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/prop/php/repvenestab/rep7Dias.php",
        //method: "POST",
        type: "GET",
        success: function(data){
            console.log(data);
            var establecimiento= [];
            var monto= [];
            var ordenes= [];
            for(var i in data){
                establecimiento.push(data[i].est);
                monto.push(data[i].precTotal);
                ordenes.push(data[i].cantTotal);
            }
            var BARCHARTVENTAS= $('#barChartVentas7Dias');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: establecimiento,
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
                            data: monto,
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

//Grafica para las ventas de hace 30 dias
$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/prop/php/repvenestab/rep30Dias.php",
        type: "GET",
        success: function(data){
            console.log(data);
            var establecimiento= [];
            var monto= [];
            var ordenes= [];
            for(var i in data){
                establecimiento.push(data[i].est);
                monto.push(data[i].precTotal);
                ordenes.push(data[i].cantTotal);
            }
            var BARCHARTVENTAS= $('#barChartVentas30Dias');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: establecimiento,
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
                            data: monto,
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

//Grafica para las ventas de hace 90 dias
$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/prop/php/repvenestab/rep90Dias.php",
        //method: "POST",
        type: "GET",
        success: function(data){
            console.log(data);
            var establecimiento= [];
            var monto= [];
            var ordenes= [];
            for(var i in data){
                establecimiento.push(data[i].est);
                monto.push(data[i].precTotal);
                ordenes.push(data[i].cantTotal);
            }
            var BARCHARTVENTAS= $('#barChartVentas90Dias');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: establecimiento,
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
                            data: monto,
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