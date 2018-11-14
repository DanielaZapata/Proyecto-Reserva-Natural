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
        <link rel="stylesheet" href="bootstrap.min.css" 
              integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" 
              crossorigin="anonymous"/>

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
                img.edit {
                    width: 60px;
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
           <br>
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
                     <td class="bg-info"><image class="edit" onclick="editarImagen('<%= imagen.nombre%>', '<%= imagen.imagen%>', '<%= imagen.descripcion%>')" src="https://image.flaticon.com/icons/svg/34/34022.svg" /></td>
                    </tr>
                </div>
            </table>
            <%
            }%>
        </div>
      
        
    </div>
         <footer>
             
            <section class="links">
                <a href="Donde_queda">¿Dónde queda?</a>
                <a href="Comentarios">Comentarios</a>
                <a href="Nueva_flora">Nueva flora</a>
            </section>
            <div class="rs">
                 <a href="https://www.facebook.com/dani.pachon.509"><img src="imagenes/facebook.jpg" width="50" alt="50"></a>
                 <a href="https://www.instagram.com/ensenadadeutria/?hl=es-la"><img src="imagenes/instagram.jpg" width="50" alt="50"></a>

            </div>
             
         </footer>
</body>
</html>


