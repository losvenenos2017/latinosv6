<?php
//servidor MySql  
$C_SERVER='localhost';  
//base de datos  
$C_BASE_DATOS='latinosv6';  
//usuario y contraseña de la base de datos mysql  
$C_USUARIO='root';  
$C_CONTRASENA='';  
//ruta archivo de salida   
//(el nombre lo componemos con Y_m_d_H_i_s para que sea diferente en cada backup)  
$C_RUTA_ARCHIVO = 'C:/xampp/htdocs/Latinosv6.1/Backup/';
$C_FILE=date("Y_m_d_H_i_s").'.sql';
//si vamos a comprimirlo  
$C_COMPRIMIR_MYSQL='true';  

//comando  
$command = "C:/xampp/mysql/bin/mysqldump -h".$C_SERVER." ".$C_BASE_DATOS." -u".$C_USUARIO."  >".$C_RUTA_ARCHIVO.$C_FILE; 
    
   
//ejecutamos  
system($command);  
  
ob_start(); //Inicia ciclo
	header ("refresh:3;url=index.php");
	echo "<h2>Backup Creado Correctamente</h2>";
ob_end_flush();

?>
