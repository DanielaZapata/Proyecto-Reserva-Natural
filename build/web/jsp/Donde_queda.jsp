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
        <link rel="shortcut icon" href="imagenes/img7.png" />
        <title>¿Dónde queda?</title>
       <link rel="stylesheet" href="bootstrap.min.css" 
              integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" 
              crossorigin="anonymous"/>
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
                                
                                
                                <br>
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
                                
                                
                                
                             <center>
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3967.1970243130686!2d-77.42997168597684!3d6.104150329591378!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e4930897a95b54d%3A0x1f9bb3ef47e85506!2sEnsenada+de+Utr%C3%ADa!5e0!3m2!1ses-419!2sco!4v1538408257986" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                            </center>
                                
                                
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
                    <br>
                        <footer>
                                <section class="links">
                                    <a href="Donde_queda">¿Dónde queda?</a>
                                    <a href="Comentarios">Comentarios</a>
                                    
                                </section>
                        
                                </section>
                                <div class="rs">
                                    <a href="https://www.facebook.com/dani.pachon.509"><img src="imagenes/facebook.jpg" width="50" alt="50"></a>
                                    <a href="https://www.instagram.com/ensenadadeutria/?hl=es-la"><img src="imagenes/instagram.jpg" width="50" alt="50"></a>

                                    
                                  </div>
                                </section>
                            </footer>
                        
                    </body>
                </html>
