$(document).ready(function(){
    'use strict';
    var brandPrimary = 'rgba(51, 179, 90, 1)';
    $.ajax({
        url:"http://localhost/Samba_Smoothie/admin/php/dashboard/barChart.php",
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
            var BARCHARTVENTAS= $('#barChartVentas');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: ["Hoy", "Ayer", "Hace 7 días", "Hace 30 días", "Hace 90 días"],
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