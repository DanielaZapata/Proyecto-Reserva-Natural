<%-- 
    Document   : Inicio
    Created on : 15/08/2018, 08:41:53 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <link rel="shortcut icon" href="imagenes/img7.png" />
        <title>Reserva Natural Ensenada de Utría</title>
         <link rel="stylesheet" href="bootstrap.min.css" 
             integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" 
              crossorigin="anonymous"/>
    </head>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        .contenedor {
            background:#ccc;
            width:100%;
            max-width:2000px;
            margin:auto;

            /* Flexbox */
/*            display:flex;
            flex-flow:row wrap;*/
        }

        body {
            background:rgb(11, 19, 17) ;
        }

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

        .main {
            background:#fff;
            padding:30px;

            flex:1 1 70%;
            /*flex:1;*/
        }

        .main article {
            margin-bottom: 20px;
            padding-bottom:20px;
            border-bottom:1px solid #000;
        }

        .main article:nth-last-child(1){
            margin-bottom: 0;
            padding-bottom: 0;
            border-bottom:none;
        }

        aside {
            background:#1bb5db;
            padding:20px;
            /*FLEX*/
            flex:1 1 30%;
            /*flex:0 0 300px;*/

            display: flex;
            flex-wrap:wrap;
            flex-direction:column;
            justify-content:flex-start;
        }

        aside .widget {
            background: #0850d4;
/*            height:150px;*/
            margin:10px;
        }
        
        .main > img {
            max-width: 100%;
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

        @media screen and (max-width: 800px) {
            .contenedor {
                flex-direction:column;
            }

            header {
                flex-direction:column;
                padding:0;
            }

            header .logo {
                margin:20px 0;
            }

            header nav {
                width: 100%;
            }

            aside {
                flex-direction:row;
                flex:0;
            }

            aside .widget {
                flex-grow:1;
            }
        }

        @media screen and (max-width: 600px) {
            aside {
                flex-direction:column;
            }

            footer {
                justify-content:space-around;
            }
        }
        
        .widget {
            display: flex;
            flex-wrap: wrap;
        }
        
        .widget > .imagen {
            width: 250px;
        }
        
        .widget > .imagen > img {
            min-width: 100%;
            height: 160px;
        }
        .contenedor{
            background-color: white;
        }

        
    </style>


<div class="contenedor">
    <header>
        <div class="logo">
            <img src="imagenes/img7.png" width="1500" alt="40">
           <a href="#">Reserva Natural Ensena de Utría</a>
        </div>

        <nav>
            <a href="#">Inicio</a>
            <a href="Fauna">Fauna</a>
            <a href="Flora">Flora</a>
            <a href="Quienes_somos">¿Quiénes somos?</a>
            <a href="Formulario_turistico">Reserva Turística</a>
            <a href="Formulario_reserva_investigacion">Reserva Investigación</a>
        </nav>
        
    </header>

    <section class="main">

            <img src="imagenes/img5.jpg" alt="40">
            
            <article>
            <h2 class="titulo">Misión.</h2>
                Somos una reserva natural donde brindamos conocimientos en cuanto a la fauna y la flora, por lo tanto permitimos  que se hagan
                investigaciones la cual se contribuyan conocimientos. 
            </article>
        </p>            
        <article>
            <h2 class="titulo">Visión.</h2>
            <p>Poder crecer como reserva natural y poder brindarles a los usuarios nuevos metodos de investigación.
            </article> 

            <article>
                <h2 class="titulo">Información de la reserva.</h2>
                <p>El Parque Nacional Natural Utría es una especie de ‘sala de partos’ de las ballenas jorobadas,
                 que allí están protegidas del oleaje del Pacífico en la ensenada de Utría. Su principal ecosistema es el de selva húmeda tropical,
                 donde se encuentra una gran diversidad de fauna y flora. Allí es posible hacer senderismo submarino, acuático y terrestre, y observar ballenas entre julio y noviembre.
                <p>
                Las actividades ecoturísticas son el buceo en Punta Esperanza y Punta Diego, para los que buscan la contemplación y el descanso, 
                utría ofrece magníficas playas y un relajante paisaje marino, por su belleza, es perfecto para la fotografía y el video.

                </p>
                </article>

         <article>
                <h2 class="titulo">Recomendaciones.</h2>
                <ul>
                    <li type="disc">Lleva siempre contigo los documentos de identidad y seguro médico.</li>
                    <li type="disc">Por seguridad, es importante que funcionarios, intérpretes ambientales y guías estén autorizados para realizar las actividades.
                    </li>
                    <li type="disc">Se prohíbe el uso de aerosoles y productos que se consideren contaminantes como champú y jabones no biodegradables.</li>
                    <li type="disc">Se prohíbe hacer cualquier tipo de fogatas.</li>
                    <li type="disc">Está prohibida la actividad de pesca para los turistas dentro del área protegida</li>
                </ul>        
                </article>
        
        
         <%@page import="java.util.List" %>
    <%@page import="modelos.Contacto" %>
       
        <h2 class="titulo">Contáctanos</h2>
    
        <div class="contenedor">
            <%
                List<Contacto> listaContactos = (List<Contacto>)request.getAttribute("contactenos");
                Contacto c;
                for (int i = 0; i < listaContactos.size(); i++) {
                c = listaContactos.get(i);%>
                
            <div class="elemento">
                
                <div><%= c.nombre%></div>
                
                <div><%= c.telefono%></div>
               
                <div><%= c.correo%></div>
                <br>
               
            </div>
            <%
            }%>
        </div>
        
        
    </section>

   
    
    
    <aside>
            <div class="widget">
                <div class="imagen">
                    <img src="imagenes/img1.jpg" >
                </div>
                <div class="imagen">
                    <img src="imagenes/img2.jpg" >
                </div>
                <div class="imagen">
                    <img src="imagenes/img3.jpg" >
                </div>
                <div class="imagen">
                    <img src="imagenes/img4.jpg" >
                </div>
                <div class="imagen">
                    <img src="imagenes/img6.jpg" width="270" height="160">
                </div>
            </div>
    
            

        </aside>
    
    <footer>
        <section class="links">
            <a href="Donde_queda">¿Dónde queda?</a>
            <a href="Comentarios">Comentarios</a>
        </section>

        <div class="rs">
                 <a href="https://www.facebook.com/dani.pachon.509"><img src="imagenes/facebook.jpg" width="50" alt="50"></a>
                 <a href="https://www.instagram.com/ensenadadeutria/?hl=es-la"><img src="imagenes/instagram.jpg" width="50" alt="50"></a>
            </div>
    </footer>
</div>

</html>

