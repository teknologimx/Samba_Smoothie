//Grafica de barras para dashboard
$(document).ready(function () {

    'use strict';

    var brandPrimary = 'rgba(51, 179, 90, 1)';

    var CHARTHOY = $('#chartHoy'),
        CHARTAYER = $('#chartAyer');
    
    var chartHoy = new Chart(CHARTHOY, {
        type: 'bar',
        data: {
            
             labels: ['8:00', '9:00', '10:00', '11:00', '12:00', '1:00', '2:00', '3:00', '4:00', '5:00', '6:00', '7:00'],
                datasets: [{
                  label: 'Alcanzado',
                  data: [12, 19, 3, 17, 6, 3, 73, 17, 6, 3, 20, 20],
                  backgroundColor: "rgba(39,146,43,0.4)"
                }, {
                  label: 'Estimado',
                  data: [2, 29, 5, 5, 2, 6, 3, 73, 17, 6, 3, 20],
                  backgroundColor: "rgba(0, 125, 245,0.4)"
                }]
        }
    });
    
    var chartAyer = new Chart(CHARTAYER, {
        type: 'bar',
        data: {
            
             labels: ['8:00', '9:00', '10:00', '11:00', '12:00', '1:00', '2:00', '3:00', '4:00', '5:00', '6:00', '7:00'],
                datasets: [{
                  label: 'Alcanzado',
                  data: [12, 19, 3, 17, 6, 3, 73, 17, 6, 3, 20, 20],
                  backgroundColor: "rgba(39,146,43,0.4)"
                }, {
                  label: 'Estimado',
                  data: [2, 29, 5, 5, 2, 6, 3, 73, 17, 6, 3, 20],
                  backgroundColor: "rgba(0, 125, 245,0.4)"
                }]
        }
    });
    
    
    
});