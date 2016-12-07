<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>LatinosBarberShop</title>
		<link rel="shortcut icon"  type="img/png" href="img/logo.png">
        <link rel="stylesheet" href="css/style.css" type="text/css" />
        <link rel="stylesheet" href="css/banner.css" type="text/css" />
        <script src="js/slider.js" type="text/javascript"></script>
    </head>
    
    <body>
      <div id="principal">

        <section class="bloque1">
          
             <img id="logo" src="img/logo.png">
          
        </section> 

        <section class="bloque2">
        
<header>
    <?php 
       if (isset($_SESSION['email'])) { 
            if ($_SESSION['rol']=='admin') {
            include_once ('php/menu_mda.inc');
                
                } else if ($_SESSION['rol']=='cliente') {
                        include_once('php/menu_cli.inc');

                    } else if ($_SESSION['rol']=='empleado') {
                        include_once('php/menu_emp.inc'); 
                            }
                
        }else {
            include_once('menu.inc');
              }
    ?>

</header>




