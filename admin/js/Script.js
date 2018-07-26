function cambiarPestana(pestanas,pestana){
    //Obtener los elementos con los identificadores pasados
    pestana= document.getElementById(pestana.id);
    listaPestanas= document.getElementById(pestanas.id);
    
    //Obtiene las divisiones que tienen el contenido de las pestañas
    contPest= document.getElementById('c'+pestana.id);
    listacPestanas= document.getElementById('contenido'+pestanas.id);
    
    i= 0;
    
    //Recorre la lista ocultando todas las pestañas y restaurando el fondo y el padding de las pestañas
    while(typeof listacPestanas.getElementsByTagName('div')[i] != 'undefined'){
        $(document).ready(function(){
            $(listacPestanas.getElementsByTagName('div')[i]).css('display','none');
            $(listaPestanas.getElementsByTagName('li')[i]).css('background','');
            $(listaPestanas.getElementsByTagName('li')[i]).css('padding-bottom','');
        });
        i++;
    }
    $(document).ready(function(){
        /*Muestra el contenido de la pestana pasada como parameetro a la funcion,
        * cambia el color de la pestana y aumenta el padding para que tape el borde
        * superior del contenido que esta justo debajo y se vea que esta seleccionada
        */
        $(contPest).css('display','');
        $(pestana).css('background','white');
        $(pestana).css('padding-bottom','2px');
    });
}