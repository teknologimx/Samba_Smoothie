<?php

require_once 'conexion.php';
require('C:/wamp64/www/Samba_Smoothie/prop/fpdf/fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B','15');

$pdf->Cell(100,10, 'Reporte General',0,0,'C');

$boton ='';

if (isset($_POST['imprimepdf']))$printpdf=$_POST['imprimepdf'];

if ($printpdf){
    //echo 'se pulso el botón';
    
    
    $pdf->Output();
    
}
?>