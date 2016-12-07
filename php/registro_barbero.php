<?php

	include_once ('../db/utilidades_sql.php');
	include_once ('utilidades.php');

	if ($_POST){
		$contrasena=isset($_POST['contrasena'])? $_POST['contrasena']:'' ;
		$contrasenaconfir=isset($_POST['contrasenaconfir'])? $_POST['contrasenaconfir']:'' ;


		$resultado=validacion($contrasena, $contrasenaconfir);
		if ($resultado ==1){ 
	
		//Isset: Recupera lo que trae el metodo 
		$email=isset($_POST['email'])? $_POST['email']:'' ;
		$nombrescompletos=isset($_POST['nombrescompletos'])? $_POST['nombrescompletos']:'' ;
		$_id_barbero=isset($_POST['_id_barbero'])? $_POST['_id_barbero']:'' ;
		$telefono=isset($_POST['telefono'])? $_POST['telefono']:'' ;
		$movil=isset($_POST['movil'])? $_POST['movil']:'' ;
		$direccion=isset($_POST['direccion'])? $_POST['direccion']:'' ;
		$rol=isset($_POST['rol'])? $_POST['rol']:'' ;
		$contrasena=password_hash($contrasena,PASSWORD_DEFAULT); 
		$result=set_registro_barbero($_id_barbero,$email,$contrasena,$nombrescompletos,$telefono,$movil,$direccion,$rol); //set_registro metodo
		
			if (!$result) {
					if (isset ($_SESSION['rol']) == 'admin') {
				ob_start(); //Inicia ciclo
					header ("refresh:5;url=../formulario_barberos.php");
					echo "<h2>El Usuario ha Sido Creado Correctamente</h2>";
				ob_end_flush();
				} else {
					ob_start(); //Inicia ciclo
					header ("refresh:5;url=../formulariologin.php");
					echo "<h2>El Usuario ha Sido Creado Correctamente</h2>";
				ob_end_flush();
				}
			}
	}else {
		 
		ob_start(); //Inicia ciclo
					header ("refresh:5;url=../formulario_barberos.php");
					echo "<h2> Contraseña No Cumple Por favor Validar Parametros</h2>";
					
				ob_end_flush();
	}
	}else{
		header('location:index.php'); //Redirecciona al archivo establecido en el parametro location
		die(); //Termina la ejecución del archivo
	}

?>