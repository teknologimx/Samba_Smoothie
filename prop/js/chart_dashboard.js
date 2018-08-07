//Grafica de barras para dashboard
$(document).ready(function () {

    'use strict';

    var brandPrimary = 'rgba(51, 179, 90, 1)';

    var BARCHARTVENTAS    = $('#barChartVentas');
    
    var barChartExample = new Chart(BARCHARTVENTAS, {
        type: 'bar',
        data: {
            //labels: ["Enero", "Febrero", "March", "April", "May", "June", "July"],
            labels: ["Hoy", "Ayer", "Hace 7 días", "Hace 30 días", "Hace 90 días"],
            datasets: [
                {
                    label: "Ganancia",
                    backgroundColor: [
                        'rgba(51, 179, 90, 0.6)',
                        'rgba(51, 179, 90, 0.6)',
                        'rgba(51, 179, 90, 0.6)',
                        'rgba(51, 179, 90, 0.6)',
                        'rgba(51, 179, 90, 0.6)'
                        //'rgba(51, 179, 90, 0.6)',
                        //'rgba(51, 179, 90, 0.6)'
                    ],
                    borderColor: [
                        'rgba(51, 179, 90, 1)',
                        'rgba(51, 179, 90, 1)',
                        'rgba(51, 179, 90, 1)',
                        'rgba(51, 179, 90, 1)',
                        'rgba(51, 179, 90, 1)'
                        //'rgba(51, 179, 90, 1)',
                        //'rgba(51, 179, 90, 1)'
                    ],
                    borderWidth: 1,
                    //data: [65, 59, 80, 81, 56, 55, 40],
                    data: [65, 50, 80, 120, 81],
                },
                {
                    label: "Ordenes",
                    backgroundColor: [
                        'rgba(203, 203, 203, 0.6)',
                        'rgba(203, 203, 203, 0.6)',
                        'rgba(203, 203, 203, 0.6)',
                        'rgba(203, 203, 203, 0.6)',
                        'rgba(203, 203, 203, 0.6)'
                        //'rgba(203, 203, 203, 0.6)',
                        //'rgba(203, 203, 203, 0.6)',
                    ],
                    borderColor: [
                        'rgba(203, 203, 203, 1)',
                        'rgba(203, 203, 203, 1)',
                        'rgba(203, 203, 203, 1)',
                        'rgba(203, 203, 203, 1)',
                        'rgba(203, 203, 203, 1)'
                        //'rgba(203, 203, 203, 1)',
                        //'rgba(203, 203, 203, 1)'
                    ],
                    borderWidth: 1,
                    //data: [35, 40, 60, 47, 88, 27, 30],
                    data: [20, 15, 30, 50, 40],
                }
            ]
        }
    });
});