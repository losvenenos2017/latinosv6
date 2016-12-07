<nav class="nav"> 
    <center>
        <?php if (isset($_SESSION['email'])) { 
        echo $_SESSION['email'];
        echo "<a href='php/salir.php'> Salir</a>";
       } else {
           echo "<li> <a href='formulariologin.php'> Login</a></li>";
        }
        ?> 
    </center>
    <ul>
        <li> <a href="index.php"> Inicio</a></li>

        <li> <a href="contactenos.php">Admin Usuarios</a>
            <ul>
                <li> <a href="formulario_crear_cuenta.php">Crear </a></li>
                <li> <a href="editar_turno.php">Modificar </a></li>
            </ul>
        </li>

        <li> <a href="contactenos.php">Admin Empleados </a>
            <ul>
                <li> <a href="formulario_barberos.php">Crear</a></li>
                <li> <a href=" ">Modificar</a></li>
            </ul>
        </li>


        <li> <a href="contactenos.php"> Cortes</a>
            <ul>
                <li> <a href="crear_turno.php">Crear </a></li>
                <li> <a href="editar_turno.php">Modificar </a></li>
            </ul>
        </li>

        <li> <a href="contactenos.php"> Turnos</a>
	        <ul>
	        	<li> <a href="crear_turno.php">Crear </a></li>
	        	<li> <a href="editar_turno.php">Editar </a></li>
	        	<li> <a href="disponibilidad.php">Disponibilidad </a></li>
	        </ul>
        </li>
        
        <li> <a href=""> Consultas</a></li>
        
        <li> <a href="backup.php"> Backup</a> </li>
       
    </ul>
</nav>