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
		$documento=isset($_POST['documento'])? $_POST['documento']:'' ;
		$telefono=isset($_POST['telefono'])? $_POST['telefono']:'' ;
		$direccion=isset($_POST['direccion'])? $_POST['direccion']:'' ;
		$rol=isset($_POST['rol'])? $_POST['rol']:'' ;
		$contrasena=password_hash($contrasena,PASSWORD_DEFAULT); 
		$result=set_registro($email,$contrasena,$nombrescompletos,$documento,$telefono,$direccion,$rol); //set_registro metodo
		
			if (!$result) {
				ob_start(); //Inicia ciclo
					header ("refresh:3;url=../formulario_crear_cuenta.php");
					echo "<h2>El Usuario ha Sido Creado Correctamente</h2>";
				ob_end_flush();
			}
	}else {
		 
		ob_start(); //Inicia ciclo
					header ("refresh:5;url=../formulario_crear_cuenta.php");
					echo "<h2> Contraseña No Cumple Por favor Validar Parametros</h2>";
					
				ob_end_flush();
	}
	}else{
		header('location:index.php'); //Redirecciona al archivo establecido en el parametro location
		die(); //Termina la ejecución del archivo
	}

?>