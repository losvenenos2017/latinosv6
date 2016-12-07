<nav class="nav"> 
    <center> 
      <?php    
        echo $_SESSION['email'];
        echo "<a href='php/salir.php'> Salir</a> </li>";
        ?>
    </center>    
    <ul>
        <li> <a href="index.php"> Inicio</a></li>
        <li> <a href="nosotros.php"> Nosotros</a></li>
        <li> <a href="galeria.php"> Galeria</a></li>
        <li> <a href="contactenos.php"> Contactenos</a></li>
        <?php if (isset($_SESSION['email'])) { ?>
        
        <li> <a href="contactenos.php">Turnos</a>
         <ul>
         	<li> <a href=""> Asigancion </a> </li>
         	<li> <a href=""> Consulta </a> </li>
         </ul>
         </li>

         <?php  } else {
    		echo "<li> <a href='formulario_crear_cuenta.php' id='Registro'>Registro</a></li>";
            echo "<li> <a href='formulariologin.php'> Login</a></li>";
            }
        ?> 
    </ul>
</nav>