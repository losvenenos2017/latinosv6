<?php

session_start();

function validacion($contrasena, $contrasenaconfir) {
	$resultado=null;
	global $resultado,$valmay,$valmin,$valnum;
	$valmay=0;
	$valmin=0;
	$valnum=0;;
	if ($contrasena == $contrasenaconfir) {

	if (strlen($contrasena)>=8) {
		$patron1 = "/^[a-z]+$/";
		$patron2 = "/^[A-Z]+$/";
		$patron3 = "/^[0-9]+$/";
		$i=0;
		while ($i <= strlen($contrasena)+1) {
						
			$letra=substr($contrasena, $i,1);
			
			if (preg_match($patron1, $letra)){
				
				$valmin=1;
			}elseif (preg_match($patron2, $letra)){
				
				$valmay=1;
			}elseif (preg_match($patron3, $letra)){
				
				$valnum=1;
			}
			//echo "valores ".$valmay."   ".$valmin."    ".$valnum."  ";
			$suma=$valmay+$valmin+$valnum;
			if ($suma==3){
				$resultado=1;
				break;
			}
			$i++;
		}

	}return $resultado;
}
 } 
?>

