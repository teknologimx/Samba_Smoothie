<?php
error_reporting(0);
	include("conexion.php"); 
	$link=Conectarse(); 
	require('fpdf/fpdf.php');

	//const TEMPIMGLOC = 'tempimg.png';

	$dataURI    = $_POST['url'];
	$dataPieces = explode(',',$dataURI);
	$encodedImg = $dataPieces[1];
	$decodedImg = base64_decode($encodedImg);
	//se genera el esqueleto del pdf
	class PDF extends FPDF
	{
		// function Header()
		// {
		// 	$this->SetFont('Arial','B',15);
		// 	$this->Cell(30);
		// 	$this->Cell(120,10, 'Reporte De Platillos',0,0,'C');
			
		// }
		
		function Footer()
		{
			$this->SetY(-15);
			$this->SetFont('Arial','I', 8);
			$this->Cell(0,10, 'Pagina '.$this->PageNo().'/{nb}',0,0,'C' );
		}		
	}

	$hoy= getdate();
    $inicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $inicio->modify("+1 day");
    $fin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
    $var1= $inicio->format("Y-m-d H:m:i");
    $var2= $fin->format("Y-m-d H:m:i");
    
    $resultado = mysqli_query($link,  "SELECT 
                               platillos.nombre as nombre,
                               tipos.super_tipo as tipo,
                               SUM(ordenesdetalles.cantidad) as cantTotal,
                               SUM(platillosestablecimientos.precio) as precTotal
                           FROM platillos INNER JOIN platillosestablecimientos ON
                               platillos.id=platillosestablecimientos.platillo_id INNER JOIN ordenesdetalles ON
                               platillosestablecimientos.id=ordenesdetalles.platillo_id INNER JOIN tipos ON
                               platillos.tipo_id=tipos.id
                           WHERE ordenesdetalles.fecha_pago>='2018-04-21' AND ordenesdetalles.fecha_pago<='2018-07-21'
                           GROUP BY nombre
                           ORDER BY nombre ASC");
    //$row = mysqli_fetch_array($resultado);


	//  Check if image was properly decoded
	/*if( $decodedImg!==false )
	{
	    //  Save image to a temporary location
	    if( file_put_contents(TEMPIMGLOC,$decodedImg)!==false )
	    {
	        //  Open new PDF document and print image

	        $pdf = new FPDF();
	        $pdf = new PDF();
	        $pdf->AliasNbPages();
	        $pdf->AddPage();
	        $pdf->SetFont('Arial','B',15);
		   	$pdf->Cell(30);
		 	$pdf->Cell(120,10, 'Ventas totales',0,0,'C');
	        $pdf->Image(TEMPIMGLOC,15,20,180,100);
	        $pdf->Ln(120);

	        //  Delete image from server
	        unlink(TEMPIMGLOC);
	    }
	}*/
	$pdf = new FPDF();
	$pdf = new PDF();
	$pdf->AliasNbPages();
	$pdf->AddPage();
	$pdf->SetFont('Arial','B',15);
	$pdf->Cell(30);
	$pdf->Cell(120,10, 'Reporte de Ventas',0,0,'C');
	$pdf->Ln(20);

	
	$pdf->SetFillColor(232,232,232);
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(70,6,'Producto',1,0,'C',1);
	$pdf->Cell(30,6,'Tipo',1,0,'C',1);
	$pdf->Cell(40,6,'Cantidad Vendida',1,0,'C',1);
	$pdf->Cell(40,6,'Monto Generado',1,1,'C',1);
	
	$pdf->SetFont('Arial','',10);
	
	//while($row = $resultado->fetch_assoc())
	while($row = mysqli_fetch_array($resultado))
	{
		$pdf->Cell(70,6,utf8_decode($row['nombre']),1,0,'C');
		$pdf->Cell(30,6,utf8_decode($row['tipo']),1,0,'C');
		$pdf->Cell(40,6,utf8_decode($row['cantTotal']),1,0,'C');
		$pdf->Cell(40,6,utf8_decode($row['precTotal']),1,1,'C');
	}
	$pdf->Output();
?>