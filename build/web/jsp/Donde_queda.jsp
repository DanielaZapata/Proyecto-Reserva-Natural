<%-- 
    Document   : Donde_queda
    Created on : 2/09/2018, 11:26:52 PM
    Author     : FAMILIA PACHON
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <link rel="shortcut icon" href="img/img7.png" />
        <title>¿Dónde queda?</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" 
        integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous">
        <link rel="stylesheet" href="estilosd.css">

    </head>

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


<div class="contenedor">
        <header>
            <div class="logo">
               <img src="imagenes/img7.png" width="1500" alt="40">
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
                            <div class="thanks">
                                <h3>Ruta aérea:</h3>
                                <p>
                                        Por Bahía Solano o Nuquí en avión desde Bogotá o Cali (con tránsito en Medellín).
                                </p>
                                <h3>Ruta marítima:
                                </h3>
                                <p>
                                         Desde Buenaventura hasta Bahía Solano, Nuquí o El Valle en barco de cabotaje; desde estos hasta el Parque en lancha. El transporte marítimo se debe concertar con anticipación con los operadores
                                        turísticos de la zona, y su precio varía de acuerdo con el número de pasajeros de la embarcación.
                                </p>
                                <h3>Ruta terrestre:</h3>
                                <p>
                                        Desde Bahía Solano al corregimiento de El Valle en colectivo, y de allí a pie hasta el parque, por un sendero de selva tropical húmeda.
                                </p>
                                <article>
                                                <br>
                                                <br>
                                               <center> <font size=6, color= "blue">
                                                    ¡Este mágico destino espera que lo descubras y lo disfrutes con toda tu familia!</font>
                                               </center>
                                            </br>
                                            </article>
                                    
                            
                            </div>
                            
                        </div>
                    </div>
                        <footer>
                                <section class="links">
                                    <a href="Donde_queda">¿Dónde queda?</a>
                                    <a href="Comentarios">Comentarios</a>
                                    <a href="Contactenos">Contáctenos</a>
                                    
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

