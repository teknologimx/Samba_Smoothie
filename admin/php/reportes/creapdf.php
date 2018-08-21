<?php
	include("conexion.php"); 
	$link=Conectarse(); 
	require('fpdf/fpdf.php');

    const TEMPIMGLOC = 'tempimg.png';

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

	//se hace la consulta a la base de datos y se muestra en el pdf
	$resultado = mysqli_query($link, "SELECT id, nombre, calorias FROM platillos");
    $row = mysqli_fetch_array($resultado);


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
	        $pdf->SetFont('Arial','B',15);
		   	$pdf->Cell(30);
		 	$pdf->Cell(120,10, 'Reporte De Platillos',0,0,'C');
	        $pdf->Image(TEMPIMGLOC,15,20,180,100);
	        $pdf->Ln(120);

	        //  Delete image from server
	        unlink(TEMPIMGLOC);
	    }
	}

	
	$pdf->SetFillColor(232,232,232);
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(80,6,'ID',1,0,'C',1);
	$pdf->Cell(70,6,'NOMBRE',1,0,'C',1);
	$pdf->Cell(40,6,'CALORIAS',1,1,'C',1);
	
	$pdf->SetFont('Arial','',10);
	
	while($row = $resultado->fetch_assoc())
	{
		$pdf->Cell(80,6,utf8_decode($row['id']),1,0,'C');
		$pdf->Cell(70,6,utf8_decode($row['nombre']),1,0,'C');
		$pdf->Cell(40,6,utf8_decode($row['calorias']),1,1,'C');
	}
	$pdf->Output();
?>