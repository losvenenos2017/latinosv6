<?php

    include_once('db/utilidades_sql.php');
    include_once ('php/utilidades.php');
?>
<!--    -->
          <?php include_once('php/header.inc'); ?>

          <div class="contenido">
            <div class="info">
                        <p>Realizamos los mejores cortes para personas de todads las edades, visite nuestras galerias y elija el corte que mas le guste</p>
            </div>

            <div id="galerias">
              <div class="caballero">
                  <a href="php/galeria_caballero.php"> <img src="img/Galerias/Caballero/portada.jpg"> </a>
              </div>

              <div class="jovenes">
                  <a href="php/galeria_caballero.php"> <img src="img/Galerias/Jovenes/portada.jpg"> </a>                     
              </div>


              <div class="niños">
                  <a href="php/galeria_caballero.php"> <img src="img/Galerias/Niños/portada.jpg"> </a>
              </div>

              <div class="otros">
                  <a href="php/galeria_caballero.php"> <img src="img/Galerias/Otros/portada.jpg"> </a> 
              </div>
            </div>

            <div class="descip_caballeros"><strong>  </strong> 
            </div> 
                  
            <div class="descrip_jovenes"><strong>  </strong> 
            </div> 

            <div class="descrip_niños"><strong>  </strong> 
            </div> 

            <div class="descip_otros"><strong>  </strong> 
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
