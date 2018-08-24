<?php
    error_reporting(0);
	include("conexion.php"); 
	$link=Conectarse(); 
	require('fpdf/fpdf.php');

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
	    
		$pdf = new FPDF();
		$pdf = new PDF();
		$pdf->AliasNbPages();
		$pdf->AddPage();
		$pdf->SetY(35);
		$pdf->SetX(40);
		
		$pdf->SetFillColor(232,232,232);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(30,6,'No.',1,0,'C',1);
		$pdf->Cell(50,6,'SEMANA',1,0,'C',1);
		$pdf->Cell(50,6,'MONTO TOTAL',1,1,'C',1);
		
		$pdf->SetFont('Arial','',10);

	    //se hace la consulta a la base de datos y se muestra en el pdf
	    $hoy= getdate();
        //Fecha HOY
        $fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
        $var= $fInicio->format("Y-m-d");

        //Fecha Ayer
        $fInicio2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
        $fInicio2->modify("-24 hour");
        $var2= $fInicio2->format("Y-m-d");

        //Fecha 1 semana
        $fInicio2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
        $fInicio2->modify("-7 day");
        $var3= $fInicio2->format("Y-m-d");

        //Fecha 2 semanas
        $fInicio2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
        $fInicio2->modify("-14 day");
        $var4= $fInicio2->format("Y-m-d");

        //Fecha 3 semanas
        $fInicio2= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
        $fInicio2->modify("-21 day");
        $var5= $fInicio2->format("Y-m-d");

        //Hace 30 dias = 4 semanas
        $fInicio4= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
        $fInicio4->modify("-31 day");
        $var6= $fInicio4->format("Y-m-d");

        //Hace 38 dias = 5 semanas
        $fInicio3= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
        $fInicio3->modify("-38 day");
        $var7= $fInicio3->format("Y-m-d");

        //Hace 45 dias = 6 semanas
        $fInicio5= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
        $fInicio5->modify("-45 day");
        $var8= $fInicio5->format("Y-m-d");

        $result = mysqli_query($link, "SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal FROM ordenesdetalles WHERE fecha_pago='$var' UNION ALL SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal FROM ordenesdetalles WHERE fecha_pago>='$var2' AND fecha_pago<='$var' UNION ALL SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal FROM ordenesdetalles WHERE fecha_pago>='$var3' AND fecha_pago<='$var' UNION ALL SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal FROM ordenesdetalles WHERE fecha_pago>='$var4' AND fecha_pago<='$var' UNION ALL SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal FROM ordenesdetalles WHERE fecha_pago>='$var5' AND fecha_pago<='$var' UNION ALL SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal FROM ordenesdetalles WHERE fecha_pago>='$var6' AND fecha_pago<='$var' UNION ALL SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal FROM ordenesdetalles WHERE fecha_pago>='$var7' AND fecha_pago<='$var' UNION ALL SELECT IFNULL(SUM(monto_pagado * cantidad),0) as MontoTotal FROM ordenesdetalles WHERE fecha_pago>='$var8' AND fecha_pago<='$var'"); 
        $dias= array("Hoy","Ayer","Hace 1 semana","Hace 2 semanas","Hace 3 semanas","Hace 4 semana","Hace 5 semanas","Hace 6 semanas");
        $i= 0; $j=6;
		while($row = mysqli_fetch_array($result)){
		    $pdf->SetX(40); 
	        $pdf->Cell(30,6,$i,1,0,'C');
			$pdf->Cell(50,6,utf8_decode($dias[$i]),1,0,'C');
			$pdf->Cell(50,6,utf8_decode($row['MontoTotal']),1,1,'C'); 
			$i= $i+1;
	    }

		$pdf->Output();
	
?>