$(document).ready(function(){
    $.ajax({
        //url:"http://localhost/Samba_Smoothie/admin/php/dashboard/data.php",
        method: "GET",
        success: function(data){
            console.log(data);
            var ganancias= [];
            var ordenes= [];
            for(var i in data){
                ganancias.push(data[i].gan);
                ordenes.push(data[i].ord);
            }
            /*var chartdata={
                labels: ["Ganancias","Ordenes"],
                datasets:[
                    {
                        label: "Ganancia",
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
                        data: ganancias
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
                        data: ordenes
                    }
                ]
            }*/
            var brandPrimary = 'rgba(51, 179, 90, 1)';
            var BARCHARTVENTAS= $('#barChartVentas');
            var barGraph= new Chart(BARCHARTVENTAS,{
                type: 'bar',
                data: {
                    labels: "Hoy",
                    datasets:[
                        {
                            label: "Ganancia",
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
                            data: ganancias[0]
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
                            data: ordenes[0]
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