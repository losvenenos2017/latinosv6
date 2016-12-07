<?php
//Establecer la recuperación en las constantes para la conexión al motor de la base de datos y accesos a la base de datos que se necesite, La función REQUIRE recupera la información del archivo que esta establecido en los parámetros


require ('credenciales_db.php');
//Establecemos la conexión utilizando la clase mysqli, estableciendo los datos recuperados anteriormente


$mysqli =new mysqli(DB_HOST,DB_USER,DB_PASSWORD,DB_DATABASE);
//Si la conexión presenta un error lo recomendable es matar el proceso saliendo del archivo 
mysqli_set_charset($mysqli,"utf8");
if ($mysqli-> connect_errno) {
echo "No se pudo establecer la conexión";
exit;
	}

else {

		}

function set_registro ($email,$contrasena,$nombrescompletos,$documento,$telefono,$direccion,$rol) {
	global $mysqli;
	$datosuser=get_user_byid($email);
	if (!$datosuser) {

		$sql="INSERT INTO cliente (email,nombrescompletos,documento,telefono,direccion) VALUES ('{$email}','{$nombrescompletos}','{$documento}','{$telefono}','{$direccion}')";
		 $mysqli-> query ($sql);

			if ($mysqli) {
			$rol='cliente';
			set_user ($email,$contrasena,$rol);
			}
	}
}


function set_user ($email,$contrasena,$rol) {
	global $mysqli;

	$sql="INSERT INTO user (email,contrasena,rol) VALUES ('{$email}','{$contrasena}','{$rol}')";

	$mysqli-> query ($sql);
	
	}

function get_user_byid($email) {
	global $mysqli;
	$sql="SELECT email,contrasena,rol FROM user WHERE email='{$email}'";
	$result=$mysqli-> query ($sql);
	return $result-> fetch_assoc();
}

function set_registro_barbero ($_id_barbero,$email,$contrasena,$nombrescompletos,$telefono,$movil,$direccion,$rol) {
	global $mysqli;
	$datosuser=get_user_byid($email);
	if (!$datosuser) {

		$sql="INSERT INTO barberos (_id_barbero,email,nombrescompletos,telefono,movil,direccion) VALUES ('{$_id_barbero}','{$email}','{$nombrescompletos}','{$telefono}','{$movil}','{$direccion}')";
		 $mysqli-> query ($sql);
		 echo $sql;	
			if ($mysqli) {
			$rol='empleado';
			set_user ($email,$contrasena,$rol);
			}
	}
}


/*
function set_registro_categoria ($nombre,$descripcion) {
	global $mysqli;

	$sql="INSERT INTO categoria (nombre,descripcion) VALUES ('{$nombre}','{$descripcion}')";
	return $mysqli-> query ($sql);

}

function set_registro_stock ($minimo,$maximo) {
	global $mysqli;

	$sql="INSERT INTO stock (minimo,maximo) VALUES ('{$minimo}','{$maximo}')";
	return $mysqli-> query ($sql);

}

function get_categorias() {
	global $mysqli;
	$sql="SELECT * FROM categoria ORDER BY nombre";
	return $mysqli-> query ($sql);
}

function get_stock () {
	global $mysqli;
	$sql="SELECT * FROM stock ORDER BY minimo";
	return $mysqli-> query ($sql);
}

function set_producto ($nombre,$sinopsis,$imgpreview,$imgbanner,$valor,$fechaentrada,$categoria,$stock) {
	global $mysqli;

	$sql="INSERT INTO juego (nombre,sinopsis,img_preview,img_banner,valor,fecha_entrada,_id_categoria,_id_stock) VALUES ('{$nombre}','{$sinopsis}','{$imgpreview}','{$imgbanner}','{$valor}','{$fechaentrada}','{$categoria}','{$stock}')";
	 $mysqli-> query ($sql);

}

function get_ultimos(){
	global $mysqli;
	$sql="SELECT nombre,img_preview FROM juego ORDER BY fecha_entrada DESC LIMIT 3";
	return $mysqli-> query ($sql);
}

function get_productos(){
	global $mysqli;
	$sql="SELECT * FROM juego ORDER BY 1 DESC";
	return $mysqli-> query ($sql);
}

function get_productosbyid($id){
	global $mysqli;
	$sql="SELECT * FROM juego WHERE _id_juego={$id}";
	return $mysqli-> query ($sql);
}

*/
?>
