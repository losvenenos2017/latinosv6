<?php
include_once ('utilidades.php');
include_once ("../db/utilidades_sql.php");
    if ($_POST){
        $email=isset($_POST['email'])? $_POST['email']:'' ;
        $contrasena=isset($_POST['contrasena'])? $_POST['contrasena']:'' ;
        $datosuser=get_user_byid($email);

        if (PASSWORD_VERIFY($contrasena,$datosuser['contrasena'])) {
        $_SESSION['email']=$email;
        $_SESSION['rol']=$datosuser['rol'];

        header('location:../index.php');
        die();

                //}
            }else {
            header('location:../formulario_crear_cuenta.php');
            die();
        }
    }
?>