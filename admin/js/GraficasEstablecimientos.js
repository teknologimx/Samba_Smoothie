function mostrar(id) {
    if (id == "Hoy") {
        $("#Hoy").show();
        $("#Ayer").hide();
        $("#1primB").hide();
        $("#1primC").hide();
        $("#1primD"). hide();
        document.getElementById('seleccion').value = "Hoy";
       //creamos la grafica 
       var brandPrimary = 'rgba(51, 179, 90, 1)';
          $.ajax({
              url:"php/repvenestab/rephoy.php",
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
                  var ctx1 = document.getElementById("barChartVentasHoy");
                     var data1 = {
              labels: establecimiento,
              datasets: [{
                  label: 'Monto Generado',
                  data: monto,
                  borderWidth: 1,
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
                }]
              };
                      
                      var options1 = {
                        scales: {
                                xAxes: [{
                                  ticks: {
                                    fontSize: 10,
                                    maxRotation: 0 // angle in degrees
                                  }
                                }],
                                yAxes: [{
                                  ticks: {
                                    fontSize: 10,
                                    maxRotation: 0 // angle in degrees
                                  }
                                }]
                        },
                        elements: {
                            line: {
                                tension: 0, // disables bezier curves
                            }
                        }
                    };
                  var chart1 = new Chart(ctx1, {
                      type: 'bar',
                      data: data1,
                      options: options1
                  });

                   var image1 = ctx1.toDataURL('image/png');
                    document.getElementById('form_url').addEventListener("submit",function(){
                          var image1 = ctx1.toDataURL(); // data:image/png....
                          document.getElementById('url').value = image1;
                       },false);
              },
              error:function(data){
                  console.log(data);
              }
          });
    }
 
    if (id == "Ayer") {
         $("#Hoy").hide();
        $("#Ayer").show();
        $("#1primB").hide();
        $("#1primC").hide();
        $("#1primD"). hide();
        document.getElementById('seleccion').value = "Ayer";
        var brandPrimary = 'rgba(51, 179, 90, 1)';
        $.ajax({
            url:"php/repvenestab/repAyer.php",
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
                var ctx2 = document.getElementById("barChartVentasAyer");
                         var data2 = {
                  labels: establecimiento,
                  datasets: [{
                      label: 'Monto Generado',
                      data: monto,
                      borderWidth: 1,
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
                    }]
                  };
                          
                          var options2 = {
                            scales: {
                                    xAxes: [{
                                      ticks: {
                                        fontSize: 10,
                                        maxRotation: 0 // angle in degrees
                                      }
                                    }],
                                    yAxes: [{
                                      ticks: {
                                        fontSize: 10,
                                        maxRotation: 0 // angle in degrees
                                      }
                                    }]
                            },
                            elements: {
                                line: {
                                    tension: 0, // disables bezier curves
                                }
                            }
                        };
                      var chart2 = new Chart(ctx2, {
                          type: 'bar',
                          data: data2,
                          options: options2
                      });

                       var image2 = ctx2.toDataURL('image/png');
                        document.getElementById('form_url').addEventListener("submit",function(){
                              var image2 = ctx2.toDataURL(); // data:image/png....
                              document.getElementById('url').value = image2;
                           },false);
                  },
            error:function(data){
                console.log(data);
            }
        });
    }
    if (id == "1primB") {
         $("#Hoy").hide();
        $("#Ayer").hide();
        $("#1primB").show();
        $("#1primC").hide();
        $("#1primD"). hide();
        document.getElementById('seleccion').value = "1primB";
        var brandPrimary = 'rgba(51, 179, 90, 1)';
        $.ajax({
            url:"php/repvenestab/rep7Dias.php",
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
                var ctx = document.getElementById("barChartVentas7Dias");
                         var data = {
                  labels: establecimiento,
                  datasets: [{
                      label: 'Monto Generado',
                      data: monto,
                      borderWidth: 1,
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
                    }]
                  };
                          
                          var options = {
                            scales: {
                                    xAxes: [{
                                      ticks: {
                                        fontSize: 10,
                                        maxRotation: 0 // angle in degrees
                                      }
                                    }],
                                    yAxes: [{
                                      ticks: {
                                        fontSize: 10,
                                        maxRotation: 0 // angle in degrees
                                      }
                                    }]
                            },
                            elements: {
                                line: {
                                    tension: 0, // disables bezier curves
                                }
                            }
                        };
                      var chart1 = new Chart(ctx, {
                          type: 'bar',
                          data: data,
                          options: options
                      });

                       var image = ctx.toDataURL('image/png');
                        document.getElementById('form_url').addEventListener("submit",function(){
                              var image = ctx.toDataURL(); // data:image/png....
                              document.getElementById('url').value = image;
                           },false);
                  },
            error:function(data){
                console.log(data);
            }
        });
    }
    if (id == "1primC") {
         $("#Hoy").hide();
        $("#Ayer").hide();
        $("#1primB"). hide();
        $("#1primC"). show();
        $("#1primD"). hide();
        document.getElementById('seleccion').value = "1primC";
        var brandPrimary = 'rgba(51, 179, 90, 1)';
        $.ajax({
            url:"php/repvenestab/rep30Dias.php",
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
                var ctx = document.getElementById("barChartVentas30Dias");
                         var data = {
                  labels: establecimiento,
                  datasets: [{
                      label: 'Monto Generado',
                      data: monto,
                      borderWidth: 1,
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
                    }]
                  };
                          
                          var options = {
                            scales: {
                                    xAxes: [{
                                      ticks: {
                                        fontSize: 10,
                                        maxRotation: 0 // angle in degrees
                                      }
                                    }],
                                    yAxes: [{
                                      ticks: {
                                        fontSize: 10,
                                        maxRotation: 0 // angle in degrees
                                      }
                                    }]
                            },
                            elements: {
                                line: {
                                    tension: 0, // disables bezier curves
                                }
                            }
                        };
                      var chart1 = new Chart(ctx, {
                          type: 'bar',
                          data: data,
                          options: options
                      });

                       var image = ctx.toDataURL('image/png');
                        document.getElementById('form_url').addEventListener("submit",function(){
                              var image = ctx.toDataURL(); // data:image/png....
                              document.getElementById('url').value = image;
                           },false);
                  },
            error:function(data){
            console.log(data);
            }
        });
    }
    if (id == "1primD") {
        $("#Hoy").hide();
       $("#Ayer").hide();
       $("#1primB"). hide();
       $("#1primC"). hide();
       $("#1primD"). show();
       document.getElementById('seleccion').value = "1primD";
       var brandPrimary = 'rgba(51, 179, 90, 1)';
        $.ajax({
            url:"php/repvenestab/rep90Dias.php",
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
                var ctx = document.getElementById("barChartVentas90Dias");
                var data = {
                  labels: establecimiento,
                  datasets: [{
                      label: 'Monto Generado',
                      data: monto,
                      borderWidth: 1,
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
                    }]
                  };
                          
                          var options = {
                            scales: {
                                    xAxes: [{
                                      ticks: {
                                        fontSize: 10,
                                        maxRotation: 0 // angle in degrees
                                      }
                                    }],
                                    yAxes: [{
                                      ticks: {
                                        fontSize: 10,
                                        maxRotation: 0 // angle in degrees
                                      }
                                    }]
                            },
                            elements: {
                                line: {
                                    tension: 0, // disables bezier curves
                                }
                            }
                        };
                      var chart1 = new Chart(ctx, {
                          type: 'bar',
                          data: data,
                          options: options
                      });

                       var image = ctx.toDataURL('image/png');
                        document.getElementById('form_url').addEventListener("submit",function(){
                              var image = ctx.toDataURL(); // data:image/png....
                              document.getElementById('url').value = image;
                           },false);
                       //});
                  },
               
            error:function(data){
                console.log(data);
            }
        });
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