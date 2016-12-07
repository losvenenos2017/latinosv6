<nav class="nav">
    <center>
        <?php if (isset($_SESSION['email'])) { 
        echo $_SESSION['email'];
        echo "<a href='php/salir.php'> Salir</a> ";
        } else {
           echo "<li> <a href='formulariologin.php'> Login</a></li>";

        }
    ?>
    </center>
    <ul>
        <li> <a href="index.php"> Inicio</a></li>

        <li> <a href="contactenos.php"> turno</a>
            <ul>
                <li> <a href="crear_turno.php">Generar </a></li>
                <li> <a href="editar_turno.php">Estado </a></li>
                <li> <a href="modificacion_usuario.php"> Consultar </a> </li>
            </ul>
        </li>

         


       
    </ul>
</nav>