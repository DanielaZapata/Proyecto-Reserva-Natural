<%-- 
    Document   : Fauna
    Created on : 15/08/2018, 08:43:46 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Fauna</title>
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
                
                table {
                    font-family: arial, sans-serif;
                    border-collapse: collapse;
                    width: 100%;
                }

                td, th {
                    border: 1px solid #dddddd;
                    text-align: left;
                    padding: 8px;
                }

                tr {
                    background-color: #dddddd;
                }
               

        </style>

    </head>
    <body>

        <header>
            <div class="logo">
                <img src="imagenes/img7.png" width="1500" alt="40">
                <a href="#">Reserva Natural Ensena de Utría</a>
            </div>

             <nav>
                <a href="Inicio">Inicio</a>
                <a href="#">Fauna</a>
                <a href="Flora">Flora</a>
                <a href="Quienes_somos">¿Quiénes somos?</a>
                <a href="Formulario_turistico">Reserva Turística</a>
                <a href="Formulario_reserva_investigacion">Reserva Investigación</a>
            </nav>
            
        </header>

    <center>
        <h1>Fauna</h1>
    </center>

    <div class="contenedor">
        <h2>Aves</h2>
        <hr>
        
        <%@page import="java.util.List" %>
        <%@page import="modelos.Imagen" %>
        <%
            List<Imagen> imagenesAves = (List<Imagen>) request.getAttribute("imagenesAves");
            List<Imagen> imagenesCorales = (List<Imagen>) request.getAttribute("imagenesCorales");
            List<Imagen> imagenesCrustaceos = (List<Imagen>) request.getAttribute("imagenesCrustaceos");
            List<Imagen> imagenesSerpientes = (List<Imagen>) request.getAttribute("imagenesSerpientes");
            List<Imagen> imagenesMamiferos = (List<Imagen>) request.getAttribute("imagenesMamiferos");
            List<Imagen> imagenesAnfibios = (List<Imagen>) request.getAttribute("imagenesAnfibios");
        %>
        
        <br>
        <div class="contenedor">
            <%
                Imagen imagen;
                for (int i = 0; i < imagenesAves.size(); i++) {
                imagen = imagenesAves.get(i);%>
             
            <table>
                <div class="elemento">
                    <tr>
                    <strong>
                    <th><div><%= imagen.nombre%></div></th>
                    </strong>
                    <br>
                    <br>
                    <td><img src="<%= imagen.imagen%>" width="200px" height="150px"></td>
                    <br>
                    <td><div><%= imagen.descripcion%></div></td>
                    <br>
                    </tr>
                </div>
            </table>
            <%
            }%>
        </div>
        
        <br>
        <h2>Corales</h2>
        <hr>
        
        <div class="contenedor">
            <%
                for (int i = 0; i < imagenesCorales.size(); i++) {
                imagen = imagenesCorales.get(i);%>

             <table>
                <div class="elemento">
                    <tr>
                    <strong>
                    <th><div><%= imagen.nombre%></div></th>
                    </strong>
                    <br>
                    <br>
                    <td><img src="<%= imagen.imagen%>" width="200px" height="150px"></td>
                    <br>
                    <td><div><%= imagen.descripcion%></div></td>
                    <br>
                    </tr>
                </div>
            </table>
            <%
            }%>
        </div>
                    
        <br>            
        <h2>Mamiferos</h2>
        <hr>
        
        <div class="contenedor">
            <%
                for (int i = 0; i < imagenesMamiferos.size(); i++) {
                imagen = imagenesMamiferos.get(i);%>

             <table>
                <div class="elemento">
                    <tr>
                    <strong>
                    <th><div><%= imagen.nombre%></div></th>
                    </strong>
                    <br>
                    <br>
                    <td><img src="<%= imagen.imagen%>" width="200px" height="150px"></td>
                    <br>
                    <td><div><%= imagen.descripcion%></div></td>
                    <br>
                    </tr>
                </div>
            </table>
            <%
            }%>
        </div>
        
        <br>
         <h2>Crustáceos</h2>
        <hr>
        
        <div class="contenedor">
            <%
                for (int i = 0; i < imagenesCrustaceos.size(); i++) {
                imagen = imagenesCrustaceos.get(i);%>

          <table>
                <div class="elemento">
                    <tr>
                    <strong>
                    <th><div><%= imagen.nombre%></div></th>
                    </strong>
                    <br>
                    <br>
                    <td><img src="<%= imagen.imagen%>" width="200px" height="150px"></td>
                    <br>
                    <td><div><%= imagen.descripcion%></div></td>
                    <br>
                    </tr>
                </div>
            </table>
            <%
            }%>
        </div>
         <br>
         <h2>Serpientes</h2>
        <hr>
        
        <div class="contenedor">
            <%
                for (int i = 0; i < imagenesSerpientes.size(); i++) {
                imagen = imagenesSerpientes.get(i);%>

             <table>
                <div class="elemento">
                    <tr>
                    <strong>
                    <th><div><%= imagen.nombre%></div></th>
                    </strong>
                    <br>
                    <br>
                    <td><img src="<%= imagen.imagen%>" width="200px" height="150px"></td>
                    <br>
                    <td><div><%= imagen.descripcion%></div></td>
                    <br>
                    </tr>
                </div>
            </table>
            <%
            }%>
        </div>
        <br>
         <h2>Anfibios</h2>
        <hr>
        
        <div class="contenedor">
            <%
                for (int i = 0; i < imagenesAnfibios.size(); i++) {
                imagen = imagenesAnfibios.get(i);%>

            <table>
                <div class="elemento">
                    <tr>
                    <strong>
                    <th><div><%= imagen.nombre%></div></th>
                    </strong>
                    <br>
                    <br>
                    <td><img src="<%= imagen.imagen%>" width="200px" height="150px"></td>
                    <br>
                    <td><div><%= imagen.descripcion%></div></td>
                    <br>
                    </tr>
                </div>
            </table>
            <%
            }%>
        </div>
        <br>
        <br>
    </div>
         <footer>
             
            <section class="links">
                <a href="Donde_queda">¿Dónde queda?</a>
                <a href="Comentarios">Comentarios</a>
                <a href="Nueva_fauna">Nueva Fauna</a>
            </section>
            <div class="rs">
                <img src="imagenes/facebook.jpg" width="50" alt="50">
                <img src="imagenes/instagram.jpg" width="50" alt="50">
            </div>
             
         </footer>
</body>
</html>
