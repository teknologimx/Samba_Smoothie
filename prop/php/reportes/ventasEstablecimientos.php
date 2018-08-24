<?php
    error_reporting(0);

    $dataURI    = $_POST['establecimientos'];
	$dataPieces = explode(',',$dataURI);
	$encodedImg = $dataPieces[1];
    $decodedImg = base64_decode($encodedImg);
    
    crear(); //Creamos el archivo
    //leer();  //Luego lo leemos
                           
    //Para crear el archivo
    function crear(){
        if (!($link=mysqli_connect("localhost","root","", "samba"))) 
        { 
            echo "Error conectando a la base de datos.";
        } 
        mysqli_set_charset($link,"utf8");
     
        $result = mysqli_query($link,  "SELECT
                                            establecimientos.nombre as est,
                                            SUM(ordenesdetalles.cantidad) as cantTotal,
                                            SUM(platillosestablecimientos.precio) as precTotal
                                        FROM platillosestablecimientos, ordenesdetalles INNER JOIN establecimientos
                                        ON ordenesdetalles.establecimiento_id=establecimientos.id
                                        GROUP BY est
                                        ORDER BY precTotal DESC");
        $xml = new DomDocument('1.0', 'UTF-8');
                          
        $tabla= $xml->createElement('tabla');
        $tabla= $xml->appendChild($tabla);
                  
        $producto= $xml->createElement('Producto');
        $producto= $tabla->appendChild($producto);
        while($row=mysqli_fetch_array($result)){
            $nombre= $xml->createElement('establecimiento',$row[est]);
            $nombre= $producto->appendChild($nombre);
                              
            $tipo= $xml->createElement('cntTtl',$row[cantTotal]);
            $tipo= $producto->appendChild($tipo);
                              
            $cntVend= $xml->createElement('prcTtl',$row[precTotal]);
            $cntVend= $producto->appendChild($cntVend);
        }                   
        $xml->formatOutput = true;
        $el_xml = $xml->saveXML();
        $xml->save('ventas_establecimientos.xml');
        echo "<script language='javascript'>alert('Se ha guardado el documento como ventas_establecimientos.xml');</script>";
        //Mostrar el XML puro
        /*echo "<p><b>El XML ha sido creado.... Mostrando en texto plano:</b></p>".
        htmlentities($el_xml)."<br/><hr>";*/
    }

    //Para leerlo
    /*function leer(){
        echo "<p><b>Ahora mostrandolo con estilo</b></p>";
        $xml = simplexml_load_file('tabla.xml');
        $salida ="";
        foreach($xml->Producto as $producto){
            $salida .="<b>Nombre:</b> " . $producto->nombre . "<br/>".
                        "<b>Tipo:</b> " . $producto->tipo . "<br/>".
                        "<b>Cantidad vendida:</b> " . $producto->cntVend . "<br/>".
                        "<b>Monto generado:</b> " . $producto->mntGen . "<br/><hr/>";
        }
        echo $salida;
    }*/
?>