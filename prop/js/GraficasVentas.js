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
              url:"php/repvenprod/repHoy.php",
              type: "GET",
               success: function(data){
                console.log(data);
                var ganancias= [];
                var ordenes= [];
                for(var i in data){
                    ganancias.push(data[i].ganancias);
                    ordenes.push(data[i].ordenes);
                }
                var ctx1 = document.getElementById("barChartVentasHoy");
                var data1 = {
                   labels: ["09:00 hrs.", "10:00 hrs.", "11:00 hrs.", "12:00 hrs.", "13:00 hrs.","14:00 hrs.","15:00 hrs.","16:00 hrs."],
                   datasets: [{
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
        //creamos la gráfica
        var brandPrimary = 'rgba(51, 179, 90, 1)';
          $.ajax({
              url:"php/repvenprod/repAyer.php",
              type: "GET",
               success: function(data){
                console.log(data);
                var ganancias= [];
                var ordenes= [];
                for(var i in data){
                    ganancias.push(data[i].ganancias);
                    ordenes.push(data[i].ordenes);
                }
                var ctx1 = document.getElementById("barChartVentasAyer");
                var data1 = {
                   labels: ["09:00 hrs.", "10:00 hrs.", "11:00 hrs.", "12:00 hrs.", "13:00 hrs.","14:00 hrs.","15:00 hrs.","16:00 hrs."],
                   datasets: [{
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
    if (id == "1primB") {
         $("#Hoy").hide();
        $("#Ayer").hide();
        $("#1primB").show();
        $("#1primC").hide();
        $("#1primD"). hide();
        document.getElementById('seleccion').value = "1primB";
        //creamos la gráfica
        var brandPrimary = 'rgba(51, 179, 90, 1)';
          $.ajax({
              url:"php/repvenprod/rep7Dias.php",
              type: "GET",
               success: function(data){
                console.log(data);
                var ganancias= [];
                var ordenes= [];
                for(var i in data){
                    ganancias.push(data[i].ganancias);
                    ordenes.push(data[i].ordenes);
                }
                var ctx1 = document.getElementById("barChartVentas7Dias");
                var data1 = {
                   labels: ["Lunes", "Martes", "Miercoles", "Jueves", "Viernes","Sábado","Domingo"],
                   datasets: [{
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
    if (id == "1primC") {
         $("#Hoy").hide();
        $("#Ayer").hide();
        $("#1primB"). hide();
        $("#1primC"). show();
        $("#1primD"). hide();
        document.getElementById('seleccion').value = "1primC";
        var brandPrimary = 'rgba(51, 179, 90, 1)';
          $.ajax({
              url:"php/repvenprod/rep30Dias.php",
              type: "GET",
               success: function(data){
                console.log(data);
                var ganancias= [];
                var ordenes= [];
                for(var i in data){
                    ganancias.push(data[i].ganancias);
                    ordenes.push(data[i].ordenes);
                }
                var ctx1 = document.getElementById("barChartVentas30Dias");
                var data1 = {
                   labels: ["Semana 1", "Semana 2", "Semana 3", "Semana 4"],
                   datasets: [{
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
    if (id == "1primD") {
        $("#Hoy").hide();
       $("#Ayer").hide();
       $("#1primB"). hide();
       $("#1primC"). hide();
       $("#1primD"). show();
       document.getElementById('seleccion').value = "1primD";
       var brandPrimary = 'rgba(51, 179, 90, 1)';
          $.ajax({
              url:"php/repvenprod/rep90Dias.php",
              type: "GET",
               success: function(data){
                console.log(data);
                var ganancias= [];
                var ordenes= [];
                for(var i in data){
                    ganancias.push(data[i].ganancias);
                    ordenes.push(data[i].ordenes);
                }
                var ctx1 = document.getElementById("barChartVentas90Dias");
                var data1 = {
                   labels: ["Primer mes", "Segundo mes", "Tercer mes"],
                   datasets: [{
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