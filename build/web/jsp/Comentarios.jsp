<%-- 
    Document   : Comentarios 
    Created on : 1/09/2018, 10:43:18 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <title>Comentarios</title>
        <link rel="shortcut icon" href="imagenes/img7.png" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" 
        integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
         <style>
           header {
            background:#2c3e50;
            width:100%;
            padding:20px;

            /* Flexbox */
            display: flex;
            justify-content:space-between;
            align-items:center;

            flex-direction:row;
            flex-wrap:wrap;
        }

        header .logo {
            color:#fff;
            font-size:30px;
        }

        header .logo img {
            width:50px;
            vertical-align: top;
        }

        header .logo a {
            color:#fff;
            text-decoration: none;
            line-height:50px;
        }

        header nav {
            width:50%;
            /* Flexbox */

            display:flex;
            flex-wrap:wrap;
            align-items:center;
        }

        header nav a {
            background:#1da3d8;
            color:rgb(226, 227, 228);
            text-align: center;
            text-decoration: none;
            padding:10px;

            /* Flexbox */
            flex-grow:1;
        }

        header nav a:hover {
            background:#0dddcc;
        }

        footer {
            background:#2c3e50;
            width: 100%;
            padding:20px;

            /* Flexbox */
            display: flex;
            flex-wrap:wrap;
            justify-content:space-between;
        }

        footer .links {
            background: #3eb3e9;
            display:flex;
            flex-wrap:wrap;
        }

        footer .links a {
            flex-grow:1;

            color:#fff;
            padding:10px;
            text-align: center;
            text-decoration:none;
        }

        footer .links a:hover {
            background:rgb(36, 145, 218);
        }

        footer .social {
            background:#2d9cf7;
        }

        footer .social a {
            color:#fff;
            text-decoration: none;
            padding:10px;
            display: inline-block;
        }

        
                                    
         </style>
    </head>
    <body>
        <header>
          <div class="logo">
              <img src="imagenes/img7.png" width="150" alt="">
              <a href="#">Reserva Natural Ensenada de Utría</a>
          </div>
          
          <nav>
                <a href="Inicio">Inicio</a>
                <a href="Fauna">Fauna</a>
                <a href="Flora">Flora</a>
                <a href="Quienes_somos">¿Quiénes somos?</a>
                <a href="Formulario_turistico">Reserva Turística</a>
                <a href="Formulario_reserva_investigacion">Reserva Investigación</a>
           </nav>
      </header>
         
      <div class="container">
        <div class="main">
            <br>
            <br>
            <h2>Comentarios</h2>
            <p>Las opiniones son, sin duda, una herramienta que promueve el mejoramiento continuo en Nuestra Reserva por ello, lo invitamos a que opines acerca de esta grandiosa reserva, diligenciando esta breve información.</p>
            <form>
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="inputEmail4">Nombre:</label>
                        <input type="nombre" class="form-control" id="inputEmail4" placeholder="nombre">
                      </div>
                      <div class="form-group col-md-6">
                        <label for="inputPassword4">Apellido:</label>
                        <input type="apellido" class="form-control" id="inputPassword4" placeholder="apellido">
                      </div>
                    </div>
                    <div class="form-group">
                      <label for="inputAddress">Correo Electrónico:</label>
                      <input type="text" class="form-control" id="inputAddress" placeholder="Email">
                    </div>
                    <div class="form-group">
                      <label for="inputAddress2">País:</label>
                      <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
                    </div>
                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label for="inputCity">Ciudad:</label>
                        <input type="text" class="form-control" id="inputCity">
                      </div>
                     
                      <div class="form-group col-md-2">
                        <label for="inputZip">Barrio:</label>
                        <input type="text" class="form-control" id="inputZip">
                      </div>

                      <div class="form-group col-md-2">
                            <label for="inputZip">Teléfono:</label>
                            <input type="number" class="form-control" id="inputZip">
                      </div>

                      <div class="form-group col-md-2">
                            <label for="inputZip">Celular:</label>
                            <input type="number" class="form-control" id="inputZip">
                        </div>
                    
                        Opinión:
                        <textarea class="form-control" name="msgreporte" id="txtMensaje"></textarea>
                      
                    </div>
                    <div class="form-group">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="gridCheck">
                        <label class="form-check-label" for="gridCheck">
                          Acepto todos los requisitos
                        </label>
                      </div>
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar</button>
                  </form>
            <br>
            <br>
         
            
        </div>
      </div>
        <footer>
            <section class="links">
                <a href="Donde_queda">¿Dónde queda?</a>
                <a href="#">Comentarios</a>
               
            </section>
    
            </section>
            <div class="rs">
               <img src="imagenes/facebook.jpg" width="50" alt="50">
               <img src="imagenes/instagram.jpg" width="50" alt="50">
             </div>
            </section>
        </footer>
     
    </body>
</html>