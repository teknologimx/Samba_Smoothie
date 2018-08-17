<?php

$hoy= getdate();
//Otiene la fecha de hoy
$fInicio= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
//Restar 24 hrs
$fFin= new DateTime($hoy[year]."-".$hoy[mon]."-".$hoy[mday]." 00:00:00");
$fFin->modify("-24 hour");
$var= $fInicio->format("Y-m-d");
$aux= $fFin->format("Y-m-d");

?>