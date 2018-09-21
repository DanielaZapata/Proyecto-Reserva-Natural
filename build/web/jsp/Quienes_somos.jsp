<%-- 
    Document   : Quienes_somos
    Created on : 1/09/2018, 10:44:27 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE html>
<html>
    <head>
        <title>¿Quiénes somos?</title>
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

        .thanks{
            background-color: rgb(213, 221, 247);
            border: 1px solid #fff;
            border-radius: 1px;
            margin: 0 0 10px;
            padding: 5px 0;

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
            <a href="#">¿Quiénes somos?</a>
            <a href="Formulario_turistico">Reserva Turística</a>
            <a href="Formulario_reserva_investigacion">Reserva Investigación</a>
        </nav>
            
      </header>
         
      <div class="container">
        <div class="main">
            <div class="thanks">
                <h3>¿Quiénes somos?</h3>
                <p>
                    El Parque Nacional Natural Ensenada de Utría es considerado como único en su tipo por 
                    contener gran variedad de ecosistemas, que van desde el marino hasta el selvático.
                    Enmarcada por la inmensidad del Océano Pacífico y las estribaciones de la Serranía 
                    del Baudó, se estima como uno de los parques nacionales más biodiversos no solo dentro de Colombia sino en el mundo.
                </p>
                <h3>Descripción</h3>
                <p>
                    Utría comprende además del bosque húmedo tropical, estuarios, manglares, 
                    arrecifes coralinos y más de 10.000 hectáreas de Océano, que
                    por esto que el parque encierra varios de los ecosistemas más variados y a la vez frágiles en el planeta
                </p>
                <p>
                    El parque consta de una pequeña península de aproximadamente un km de ancho, 
                    la cual abraza a la ensenada propiamente dicha. En su mayoría la costa de Utría es rocosa y angosta, 
                    compuesta de arrecifes coralinos, por lo cual la selva casi llega hasta la orilla del mar.
                    Existen pocas playas arenosas.
                </p>
                <h3>Clima</h3>
                <p>
                    El clima del parque es cálido húmedo, y está determinado por 2 características singulares 
                    del parque que son la Serranía y el Océano Pacífico.
                    Esto causa que la humedad sea bastante alta, originando una gran precipitación de lluvias todo el año. Las mareas, que se elevan alrededor de unos 2 metros,
                    dominan la parte costera. La temperatura oscila entre 23 y 30 °C.
                </p>
            </div>
            
        </div>
    </div>
        <footer>
                <section class="links">
                    <a href="Donde_queda">¿Dónde queda?</a>
                    <a href="Comentarios">Comentarios</a>
                    
                    
                </section>
        
                </section>
                <div class="rs">
                    <img src="imagenes/facebook.jpg" width="50" alt="50">
                    <img src="imagenes/instagram.jpg" width="50" alt="50">
                    <img src="imagenes/twitter.jpg" width="50" alt="50">
                    <img src="imagenes/youtube.jpg" width="50" alt="50">
                  </div>
                </section>
            </footer>
        
    </body>
</html>