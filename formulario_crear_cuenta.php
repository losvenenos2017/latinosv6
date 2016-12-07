<?php
/* Para incluir librerías de base de datos y utilidades */
include_once ('php/utilidades.php');
	
	include_once ('php/header.inc');

?>

			<section class="clear">

<body> 
<div align="center"> 


				<form action="php/registro.php" method="POST">
					<table>
						<tr>

							<td><h4>Email</h4></td>
							<td><input type="text" name="email"></td>
						</tr>
						<tr>
							<td><h4>Contraseña</h4></td>
							<td><input type="password"  name="contrasena"><br>
							</td>
						</tr>
						<tr>
							<td colspan="2">			
							<p class="rqcontrasena">Mínimo 8 Caracteres en Total, Mínimo 1 Mayuscula, Mínimo 1 Minuscula, Mínimo 1 Numero </p>
							</td>	
							
						</tr>

						<tr>
							<td><h4>Confirmar Contraseña</h4></td>
							<td><input type="password"  name="contrasenaconfir"></td>
						</tr>

						<tr>
							<td><h4>Nombres</h4></td>
							<td><input type="text"  name="nombrescompletos"></td>
						</tr>
						<tr>
							<td><h4>Numero de Documento</h4></td>
							<td><input type="number" name="documento"></td>
						</tr>
						<tr>
							<td><h4>Telefono</h4></td>
							<td><input type="number" name="telefono"></td>
						</tr>
						<tr>
							<td><h4>Direccion Residencia</h4></td>
							<td><input type="text" name="direccion"></td>
						</tr>

						<?php if (isset ($_SESSION['rol']) == 'admin') { ?>
						<tr>
							<td>Rol</td>
							<td><select name="rol">
								<option value="admin">Administrador</option>
								<option value="cliente">Cliente</option>
								</select>
							</td>
						</tr>
						<?php } ?>
						<tr>
							<td> <button> <div align="center"> <h4  class="regis_header">Registrar </h4> </button> </td>
							<div align="center">
						</tr>
						
					</table>
				</form>
				
			</section>
		</div>
		<div align="center">
</body>
</html>