<?php
    error_reporting(0);
	include("conexion.php"); 
	$link=Conectarse(); 
	require('fpdf/fpdf.php');
    $var = $_POST["seleccion"];

    //decodificamos url de imagen
    const TEMPIMGLOC = 'tempimg.png';

	$dataURI    = $_POST['url'];
	$dataPieces = explode(',',$dataURI);
	$encodedImg = $dataPieces[1];
	$decodedImg = base64_decode($encodedImg);


    class PDF extends FPDF
		{
			function Header()
			{
				$this->SetFont('Arial','B',15);
				$this->Cell(30);
				$this->Cell(120,10, 'Reporte de Ventas por Semana',0,0,'C');
				$this->Ln(20);
				
			}
			
			function Footer()
			{
				$this->SetY(-15);
				$this->SetFont('Arial','I', 8);
				$this->Cell(0,10, 'Pagina '.$this->PageNo().'/{nb}',0,0,'C' );
			}		
		}

	//  Check if image was properly decoded
	if( $decodedImg!==false )
	{
	    //  Save image to a temporary location
	    if( file_put_contents(TEMPIMGLOC,$decodedImg)!==false )
	    {
	        //  Open new PDF document and print image

	        $pdf = new FPDF();
	        $pdf = new PDF();
	        $pdf->AliasNbPages();
	        $pdf->AddPage();
	        $pdf->Image(TEMPIMGLOC,15,30,180,100);
	        $pdf->Ln(108);

	        //  Delete image from server
	        unlink(TEMPIMGLOC);
	    }
	}
	$pdf->SetX(38);


    if($var == "Hoy"){
		$pdf->SetFont('Arial','B',15);
        $pdf->Cell(6);
        $pdf->Cell(2,1, 'Ventas Totales Hoy',0,0,'C');
        $pdf->Ln(6);
		
		$pdf->SetX(15);
		$pdf->SetFillColor(232,232,232);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(60,6,'Establecimientos',1,0,'C',1);
		$pdf->Cell(60,6,'Cantidad de Productos',1,0,'C',1);
		$pdf->Cell(60,6,'Ventas Totales',1,1,'C',1);
		
		$pdf->SetFont('Arial','',10);
	    //se hace la consulta a la base de datos y se muestra en el pdf
	   $hoy= getdate();
       $inicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
       $fin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
       $fin->modify("+24 hour");
       $var1= $inicio->format("Y-m-d H:m:i");
       $var2= $fin->format("Y-m-d H:m:i");

        $result= mysqli_query($link, "SELECT
                            establecimientos.nombre as est,
                            IFNULL(SUM(ordenesdetalles.cantidad),0) as cantTotal,
                            IFNULL(SUM(platillosestablecimientos.precio),0) as precTotal
                        FROM platillosestablecimientos, ordenesdetalles INNER JOIN establecimientos
                        ON ordenesdetalles.establecimiento_id=establecimientos.id
                        Where ordenesdetalles.fecha_pago>='$var1' AND ordenesdetalles.fecha_pago<='$var2'
                        GROUP BY est
                        ORDER BY precTotal DESC");
		while($row = mysqli_fetch_array($result)){
			$pdf->SetX(15);
	        $pdf->Cell(60,6,utf8_decode($row["est"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row["cantTotal"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row['precTotal']),1,1,'C'); 
	    }
	  }//cierra if
	  elseif ($var == "Ayer") { 
	    //creamos la siguiente tabla 
	    $pdf->SetFont('Arial','B',15);
        $pdf->Cell(6);
        $pdf->Cell(2,1, 'Ventas Totales Ayer',0,0,'C');
        $pdf->Ln(6);
		
		$pdf->SetX(15);
		$pdf->SetFillColor(232,232,232);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(60,6,'Establecimientos',1,0,'C',1);
		$pdf->Cell(60,6,'Cantidad de Productos',1,0,'C',1);
		$pdf->Cell(60,6,'Ventas Totales',1,1,'C',1);
		
		$pdf->SetFont('Arial','',10);

	    //se hace la consulta a la base de datos y se muestra en el pdf
	   $hoy= getdate();
	    $inicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
	    $fin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
	    $fin->modify("-48 hour");
	    $fin->modify("-24 hour");
	    $var1= $inicio->format("Y-m-d H:m:i");
	    $var2= $fin->format("Y-m-d H:m:i");
	     
	    $result= mysqli_query($link, "SELECT
	                            establecimientos.nombre as est,
	                            SUM(ordenesdetalles.cantidad) as cantTotal,
	                            SUM(platillosestablecimientos.precio) as precTotal
	                        FROM platillosestablecimientos, ordenesdetalles INNER JOIN establecimientos
	                        ON ordenesdetalles.establecimiento_id=establecimientos.id
	                        Where ordenesdetalles.fecha_pago>='$var1' AND ordenesdetalles.fecha_pago<='$var2'
	                        GROUP BY est
	                        ORDER BY precTotal DESC");
		while($row = mysqli_fetch_array($result)){
			$pdf->SetX(15);
	        $pdf->Cell(60,6,utf8_decode($row["est"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row["cantTotal"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row['precTotal']),1,1,'C'); 
	    }
	   }//cierra if
	   elseif ($var == "1primB") {
	    //creamos la siguiente tabla 
	    $pdf->SetFont('Arial','B',15);
        $pdf->Cell(10);
        $pdf->Cell(2,1, 'Ventas totales hace 7 dias',0,0,'C');
        $pdf->Ln(6);
		
		$pdf->SetX(15);
		$pdf->SetFillColor(232,232,232);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(60,6,'Establecimientos',1,0,'C',1);
		$pdf->Cell(60,6,'Cantidad de Productos',1,0,'C',1);
		$pdf->Cell(60,6,'Ventas Totales',1,1,'C',1);
		
		$pdf->SetFont('Arial','',10);
	    //se hace la consulta a la base de datos y se muestra en el pdf
	    $hoy= getdate();
	    $inicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
	    $fin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
	    $inicio->modify("-2 week");
	    $fin->modify("-1 week");
	    $var1= $inicio->format("Y-m-d H:m:i");
	    $var2= $fin->format("Y-m-d H:m:i");
	     
	    $result= mysqli_query($link, "SELECT
	                            establecimientos.nombre as est,
	                            SUM(ordenesdetalles.cantidad) as cantTotal,
	                            SUM(platillosestablecimientos.precio) as precTotal
	                        FROM platillosestablecimientos, ordenesdetalles INNER JOIN establecimientos
	                        ON ordenesdetalles.establecimiento_id=establecimientos.id
	                        Where ordenesdetalles.fecha_pago>='$var1' AND ordenesdetalles.fecha_pago<='$var2'
	                        GROUP BY est
	                        ORDER BY precTotal DESC");
		while($row = mysqli_fetch_array($result)){
			$pdf->SetX(15);
	        $pdf->Cell(60,6,utf8_decode($row["est"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row["cantTotal"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row['precTotal']),1,1,'C'); 
	    }
	   }//cierra if
	   elseif ($var == "1primC") {
	    //creamos la siguiente tabla 
	    $pdf->SetFont('Arial','B',15);
        $pdf->Cell(10);
        $pdf->Cell(2,1, 'Ventas totales hace 30 dias',0,0,'C');
        $pdf->Ln(6);
		
		$pdf->SetX(15);
		$pdf->SetFillColor(232,232,232);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(60,6,'Establecimientos',1,0,'C',1);
		$pdf->Cell(60,6,'Cantidad de Productos',1,0,'C',1);
		$pdf->Cell(60,6,'Ventas Totales',1,1,'C',1);
		
		$pdf->SetFont('Arial','',10);
	    //se hace la consulta a la base de datos y se muestra en el pdf
	   $hoy= getdate();
	    $inicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
	    $fin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
	    $inicio->modify("-60 day");
	    $fin->modify("-30 day");
	    $var1= $inicio->format("Y-m-d H:m:i");
	    $var2= $fin->format("Y-m-d H:m:i");
	     
	    $result= mysqli_query($link, "SELECT
	                            establecimientos.nombre as est,
	                            SUM(ordenesdetalles.cantidad) as cantTotal,
	                            SUM(platillosestablecimientos.precio) as precTotal
	                        FROM platillosestablecimientos, ordenesdetalles INNER JOIN establecimientos
	                        ON ordenesdetalles.establecimiento_id=establecimientos.id
	                        Where ordenesdetalles.fecha_pago>='$var1' AND ordenesdetalles.fecha_pago<='$var2'
	                        GROUP BY est
	                        ORDER BY precTotal DESC");
		while($row = mysqli_fetch_array($result)){
			$pdf->SetX(15);
	        $pdf->Cell(60,6,utf8_decode($row["est"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row["cantTotal"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row['precTotal']),1,1,'C'); 
	    }
       }//cierra if
       elseif ($var == "1primD") {
	    //creamos la siguiente tabla 
	    $pdf->SetFont('Arial','B',14);
        $pdf->Cell(10);
        $pdf->Cell(2,1, 'Ventas totales hace 90 dias',0,0,'C');
        $pdf->Ln(6);

		$pdf->SetX(15);
		$pdf->SetFillColor(232,232,232);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(60,6,'Establecimientos',1,0,'C',1);
		$pdf->Cell(60,6,'Cantidad de Productos',1,0,'C',1);
		$pdf->Cell(60,6,'Ventas Totales',1,1,'C',1);
		
		$pdf->SetFont('Arial','',10);
	    //se hace la consulta a la base de datos y se muestra en el pdf
	    $hoy= getdate();
	    $inicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
	    $fin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
	    $inicio->modify("-120 day");
	    $fin->modify("-60 day");
	    $var1= $inicio->format("Y-m-d H:m:i");
	    $var2= $fin->format("Y-m-d H:m:i");
	     
	    $result= mysqli_query($link, "SELECT
	                            establecimientos.nombre as est,
	                            SUM(ordenesdetalles.cantidad) as cantTotal,
	                            SUM(platillosestablecimientos.precio) as precTotal
	                        FROM platillosestablecimientos, ordenesdetalles INNER JOIN establecimientos
	                        ON ordenesdetalles.establecimiento_id=establecimientos.id
	                        Where ordenesdetalles.fecha_pago>='$var1' AND ordenesdetalles.fecha_pago<='$var2'
	                        GROUP BY est
	                        ORDER BY precTotal DESC");
		while($row = mysqli_fetch_array($result)){
			$pdf->SetX(15);
	        $pdf->Cell(60,6,utf8_decode($row["est"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row["cantTotal"]),1,0,'C');
			$pdf->Cell(60,6,utf8_decode($row['precTotal']),1,1,'C'); 
	     }
        }//cierra if
        //muestras pdf
		$pdf->Output();

    
?>