<?php
	include("conexion.php"); 
	$link=Conectarse(); 
	require('../../fpdf/fpdf.php');
    if ($_POST["tipo"]==0) {
	    class PDF extends FPDF
		{
			function Header()
			{
				$this->SetFont('Arial','B',15);
				$this->Cell(30);
				$this->Cell(120,10, 'Reporte De Clientes Leales',0,0,'C');
				$this->Ln(20);
				
			}
			
			function Footer()
			{
				$this->SetY(-15);
				$this->SetFont('Arial','I', 8);
				$this->Cell(0,10, 'Pagina '.$this->PageNo().'/{nb}',0,0,'C' );
			}		
		}
	    
		$pdf = new FPDF();
		$pdf = new PDF();
		$pdf->AliasNbPages();
		$pdf->AddPage();
		
		$pdf->SetFillColor(232,232,232);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(20,6,'NOMBRE',1,0,'C',1);
		$pdf->Cell(40,6,'EMAIL',1,0,'C',1);
		$pdf->Cell(53,6,'ULTIMO DIA DE PEDIDO',1,0,'C',1);
		$pdf->Cell(45,6,'PEDIDOS TOTALES',1,0,'C',1);
		$pdf->Cell(32,6,'MONTO TOTAL',1,1,'C',1);
		
		$pdf->SetFont('Arial','',10);

	    //se hace la consulta a la base de datos y se muestra en el pdf
	    $query1 = mysqli_query($link, "SELECT  id, nombre, contacto_email FROM empresas");
		while($row1 = mysqli_fetch_array($query1)){ 
	      $id=$row1["id"];
	      $query = mysqli_query($link, "SELECT  COUNT(*) as TOTAL, last_updated FROM embarques WHERE  empresa_id = '".$id."'");
	        $row = mysqli_fetch_array($query); 
	        if($row["TOTAL"]>=3){
	          $query2 = mysqli_query($link, "SELECT COUNT(*) as TOTALP, SUM(monto_pagado) AS MONTO FROM ordenes WHERE empresa_id='".$id."'");
	              $row2 = mysqli_fetch_array($query2);
	              $pdf->Cell(20,6,utf8_decode($row1['nombre']),1,0,'C');
			      $pdf->Cell(40,6,utf8_decode($row1['contacto_email']),1,0,'C');
			      $pdf->Cell(53,6,utf8_decode($row['last_updated']),1,0,'C');
	              $pdf->Cell(45,6,utf8_decode($row2['TOTALP']),1,0,'C');
	              $pdf->Cell(32,6,utf8_decode($row2['MONTO']),1,1,'C');   
	     }
	    }
		$pdf->Output();
    }else{
    	class PDF extends FPDF
	{
		function Header()
		{
			$this->SetFont('Arial','B',15);
			$this->Cell(30);
			$this->Cell(120,10, 'Reporte De Clientes en Riesgo',0,0,'C');
			$this->Ln(20);
			
		}
		
		function Footer()
		{
			$this->SetY(-15);
			$this->SetFont('Arial','I', 8);
			$this->Cell(0,10, 'Pagina '.$this->PageNo().'/{nb}',0,0,'C' );
		}		
	}
    
	$pdf = new FPDF();
	$pdf = new PDF();
	$pdf->AliasNbPages();
	$pdf->AddPage();
	
	$pdf->SetFillColor(232,232,232);
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(33,6,'NOMBRE',1,0,'C',1);
	$pdf->Cell(40,6,'EMAIL',1,0,'C',1);
	$pdf->Cell(40,6,'ULTIMO PEDIDO',1,0,'C',1);
	$pdf->Cell(45,6,'PEDIDOS TOTALES',1,0,'C',1);
	$pdf->Cell(32,6,'MONTO TOTAL',1,1,'C',1);
	
	$pdf->SetFont('Arial','',10);

    //se hace la consulta a la base de datos y se muestra en el pdf
    $query1 = mysqli_query($link, "SELECT  id, nombre, contacto_email FROM empresas");
	while($row1 = mysqli_fetch_array($query1)){ 
      $id=$row1["id"];
      $query = mysqli_query($link, "SELECT  COUNT(*) as TOTAL, IF(last_updated IS NULL or last_updated = '', 'null', last_updated) as last_updated FROM embarques WHERE  empresa_id = '".$id."'");
        $row = mysqli_fetch_array($query); 
        if($row["TOTAL"]<3){
          $query2 = mysqli_query($link, "SELECT COUNT(*) as TOTALP, IFNULL(SUM(monto_pagado),0) AS MONTO FROM ordenes WHERE empresa_id='".$id."'");
              $row2 = mysqli_fetch_array($query2);
              $pdf->Cell(33,6,utf8_decode($row1['nombre']),1,0,'C');
		      $pdf->Cell(40,6,utf8_decode($row1['contacto_email']),1,0,'C');
		      $pdf->Cell(40,6,utf8_decode($row['last_updated']),1,0,'C');
              $pdf->Cell(45,6,utf8_decode($row2['TOTALP']),1,0,'C');
              $pdf->Cell(32,6,utf8_decode($row2['MONTO']),1,1,'C');   
     }
    }
	$pdf->Output();
    }
	
?>