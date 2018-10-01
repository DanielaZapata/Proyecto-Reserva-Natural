<%-- 
    Document   : Flora
    Created on : 29/09/2018, 12:50:19 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Flora</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="imagenes/img7.png" />

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
                <img src="imagenes/img7.png" width="1500" alt="40">
                <a href="#">Reserva Natural Ensenada de Utría</a>
            </div>

             <nav>
                <a href="Inicio">Inicio</a>
                <a href="Fauna">Fauna</a>
                <a href="#">Flora</a>
                <a href="Quienes_somos">¿Quiénes somos?</a>
                <a href="Formulario_turistico">Reserva Turística</a>
                <a href="Formulario_reserva_investigacion">Reserva Investigación</a>
            </nav>
            
        </header>

    <center>
        <h1>Flora</h1>
    </center>

    <div class="contenedor">
        
        <%@page import="java.util.List" %>
        <%@page import="modelos.Imagen" %>
        <%
            List<Imagen> imagenesPlantas = (List<Imagen>) request.getAttribute("imagenesPlantas");
        %>
        
        <div class="contenedor">
            <%
                Imagen imagen;
                for (int i = 0; i < imagenesPlantas.size(); i++) {
                imagen = imagenesPlantas.get(i);%>
                
            <div class="elemento">
                <strong>
                <div><%= imagen.nombre%></div>
                </strong>
                <br>
                <img src="<%= imagen.imagen%>" width="200px" height="100px">
                <br>
                <div><%= imagen.descripcion%></div>
                <br>
            </div>
            <%
            }%>
        </div>
      
        
    </div>
         <footer>
             
            <section class="links">
                <a href="Donde_queda">¿Dónde queda?</a>
                <a href="Comentarios">Comentarios</a>
            </section>
            <div class="rs">
                <img src="imagenes/facebook.jpg" width="50" alt="50">
                <img src="imagenes/instagram.jpg" width="50" alt="50">
                <img src="imagenes/twitter.jpg" width="50" alt="50">
                <img src="imagenes/youtube.jpg" width="50" alt="50">
            </div>
             
         </footer>
</body>
</html>


