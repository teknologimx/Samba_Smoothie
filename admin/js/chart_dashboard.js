$(document).ready(function () {

    'use strict';

    var brandPrimary = 'rgba(51, 179, 90, 1)';

    var /*BARCHARTVENTAS    = $('#barChartVentas'),*/
        LINECHARTVENTAS = $('#lineChartVentas');
    
    /*var barChartExample = new Chart(BARCHARTVENTAS, {
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
                    data: [65, 59, 80, 81, 56],
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
                    data: [35, 40, 60, 47, 88],
                }
            ]
        }
    });*/
    
    var lineChartExample = new Chart(LINECHARTVENTAS, {
        type: 'line',
        data: {
            //labels: ["Enero", "Febrero", "March", "April", "May", "June", "July"],
            labels: ["Hoy", "Ayer", "Hace 7 días", "Hace 30 días", "Hace 90 días"],
            datasets: [
                {
                    label: "Ganancias",
                    fill: true,
                    lineTension: 0.3,
                    backgroundColor: "rgba(51, 179, 90, 0.38)",
                    borderColor: brandPrimary,
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 1,
                    pointBorderColor: brandPrimary,
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 1,
                    pointHoverRadius: 5,
                    pointHoverBackgroundColor: brandPrimary,
                    pointHoverBorderColor: "rgba(220,220,220,1)",
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 10,
                    //data: [50, 20, 40, 31, 32, 22, 10],
                    data: [65, 50, 80, 120, 81],
                    spanGaps: false
                },
                {
                    label: "Ordenes",
                    fill: true,
                    lineTension: 0.3,
                    backgroundColor: "rgba(75,192,192,0.4)",
                    borderColor: "rgba(75,192,192,1)",
                    borderCapStyle: 'butt',
                    borderDash: [],
                    borderDashOffset: 0.0,
                    borderJoinStyle: 'miter',
                    borderWidth: 1,
                    pointBorderColor: "rgba(75,192,192,1)",
                    pointBackgroundColor: "#fff",
                    pointBorderWidth: 1,
                    pointHoverRadius: 5,
                    pointHoverBackgroundColor: "rgba(75,192,192,1)",
                    pointHoverBorderColor: "rgba(220,220,220,1)",
                    pointHoverBorderWidth: 2,
                    pointRadius: 1,
                    pointHitRadius: 10,
                    //data: [65, 59, 30, 81, 56, 55, 40],
                    data: [20, 15, 30, 50, 40],
                    spanGaps: false
                }
            ]
        }
    });
    
});