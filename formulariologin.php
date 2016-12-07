

				<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/header.inc');
				?>

				

			<div class="ingreso">

				<form action="php/login.php" method="POST">
					<div class="login">
					  <div class="login-triangle"></div>
					  
					  <h2 class="login-header">Login</h2>

					  <form class="login-container">
					    <p><input type="email" name="email" placeholder="Email"></p>
					    <p><input type="Password"  name="contrasena" placeholder="Password"></p>
					    <p><input type="submit" value="Login"></p>
					  </form>
					</div>

				</form>


			</div>
						

			</section>

			
		<section class="bloque3">
          <img id="derecho" src="img/derecho.png">
        </section>

        

      </div>
      
      
      <?php include_once ('php/footer.inc');  ?> 

    </body>
</html>