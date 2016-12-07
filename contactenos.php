<?php

    include_once('db/utilidades_sql.php');
    include_once ('php/utilidades.php');
?>
<!--    -->
          <?php include_once('php/header.inc'); ?>

            <div class="contenido">
                <div class="historia">
                    <div id="mapa">
                <!--  --><div id="texto">
                        <p > "No hay que olvidar el pasado. Hay que mirar el pasado como una historia. Una historia que nos cuenta que siempre se necesita fé para salir adelante, en técnica, en sensibilidad, en ideas. La Historia es relevante para la carrera de cualquier persona. Ustedes no pueden mirarse sólo a ustedes mismos; de esa forma, no se verán. Ni sabrán qué hacer ni cómo hacerlo... Yo encuentro inspiración en todas partes: en la cultura, en la Historia, en los libros... El conocimiento de la Historia les dará la forma de sentirse seguros y bien con ustedes mismos...Entonces triunfarán en su propio ser y en sus talentos..."
                        </p>
                        </div>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d5156.908790213111!2d-74.08795440330942!3d4.679242753956283!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc385997e11944331!2sLatinos+Barber+Shop!5e0!3m2!1ses!2sco!4v1474916894840"></iframe>
                    </div>
                </div>

                <div class="row">
                    <div class="box">
                        <div class="dudas">
                            <p> En este espacio el usuario va a ingresar sus datos y cualquier duda y/o inquietud que tenga con respecto a la barberia, en el menos tiempo posible sera contactado/a para dar resolucion a las mismas </p> 
                            
                            <h1>Datos de Contacto</h1>
                            <div>
                            <form class="formulario" action="php/inquitudes.php" method="post">
                                <label>Nombres Completos </label> <br>
                                    <input type="text" name="nombres" id="nombres" required/> <br>

                                <label>Numero Telefonico</label>  <br>
                                    <input type="number" name="telefono" id="telefono" required/> <br>

                                <label>Correo Electronico</label>  <br>
                                    <input type="text" name="correo" id="correo" required/>  <br>

                                <label>Mensaje</label>  <br>
                                    <textarea input type="text" name="mensaje" id="mensaje" rows="7" cols="90" required/> </textarea><br>
                                        <input type="submit" value="Enviar" /> <br>
                            </form>
                         

                        </div>
                    </div>
                </div>

            </div>
        </section>

        <section class="bloque3">
          <img id="derecho" src="img/derecho.png">
        </section>

      </div>
      
      <?php include_once ('php/footer.inc');  ?> 

    </body>
</html>

