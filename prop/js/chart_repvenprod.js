//Grafica de barras para dashboard
$(document).ready(function () {

    'use strict';

    var brandPrimary = 'rgba(51, 179, 90, 1)';

    var CHARTHOY = $('#chartHoy'),
        CHARTAYER = $('#chartAyer'),
        CHART7DIAS = $('#chart7Dias'),
        CHART30DIAS = $('#chart30Dias'),
        CHART90DIAS = $('#chart90Dias');
    
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
    
    var chart7Dias = new Chart(CHART7DIAS, {
      type: 'bar',
      data: {
          
           labels: ['8:00', '9:00', '10:00', '11:00', '12:00', '1:00', '2:00', '3:00', '4:00', '5:00', '6:00', '7:00'],
              datasets: [{
                label: 'Alcanzado',
                data: [34, 29, 1, 7, 16, 13, 53, 87, 16, 19, 25, 20],
                backgroundColor: "rgba(39,146,43,0.4)"
              }, {
                label: 'Estimado',
                data: [12, 34, 15, 15, 12, 16, 3, 73, 17, 6, 3, 20],
                backgroundColor: "rgba(0, 125, 245,0.4)"
              }]
      }
  });

  var chart30Dias = new Chart(CHART30DIAS, {
    type: 'bar',
    data: {
        
         labels: ['8:00', '9:00', '10:00', '11:00', '12:00', '1:00', '2:00', '3:00', '4:00', '5:00', '6:00', '7:00'],
            datasets: [{
              label: 'Alcanzado',
              data: [3, 9, 1, 7, 8, 3, 5, 8, 1, 1, 2, 2],
              backgroundColor: "rgba(39,146,43,0.4)"
            }, {
              label: 'Estimado',
              data: [1, 3, 1, 15, 12, 16, 3, 73, 17, 6, 3, 20],
              backgroundColor: "rgba(0, 125, 245,0.4)"
            }]
    }
  });

  var chart90Dias = new Chart(CHART90DIAS, {
    type: 'bar',
    data: {
        
         labels: ['8:00', '9:00', '10:00', '11:00', '12:00', '1:00', '2:00', '3:00', '4:00', '5:00', '6:00', '7:00'],
            datasets: [{
              label: 'Alcanzado',
              data: [0, 0, 1, 7, 16, 13, 53, 87, 16, 19, 0, 0],
              backgroundColor: "rgba(39,146,43,0.4)"
            }, {
              label: 'Estimado',
              data: [0, 0, 15, 15, 12, 16, 3, 73, 17, 6, 0, 0],
              backgroundColor: "rgba(0, 125, 245,0.4)"
            }]
    }
  });
});s