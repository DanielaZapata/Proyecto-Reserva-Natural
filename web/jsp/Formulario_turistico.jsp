<%-- 
    Document   : Formulario_turistico
    Created on : 15/08/2018, 08:46:53 AM
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Formulario reserva turistica</title>
    <link rel="shortcut icon" href="imagenes/img7.png" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="main.js"></script>

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
                    <a href="#">Reserva Natural Ensena de Utría</a>
                </div>
                
              
             <nav>
                <a href="Inicio">Inicio</a>
                <a href="Fauna">Fauna</a>
                <a href="Flora">Flora</a>
                <a href="Quienes_somos">¿Quiénes somos?</a>
                <a href="#">Reserva Turística</a>
                <a href="Formulario_reserva_investigacion">Reserva Investigación</a>
            </nav>
            
            </header>

            <br>
            <br>
            <center>
                <h1>Formulario reserva turística</h1>
            </center>
    
            <br>
            <br>
        <div class="container">
                <form>
                        <div class="col-4">
                            <div class="form-group">
                                 <label for="nombre">Nombres:</label>
                                 <input type="text"  name="nombres" class="form-control" id="nombre"  placeholder="Escribe aquí tu nombre"/>
                            </div>
    
                            <div class="col-15">
                                <label for="apellido">Apellidos:</label>
                                 <input type="text"  name="apellidos" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"     placeholder="Escribe aquí tu apellido">
                           </div>
    
                       <br><div class="col-15">
                                <label for="correo-electronico">Correo-Electrónico:</label>
                                 <input type="email"  name="correo" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"    placeholder="Escribe aquí tu correo">	 	
                        </div>
    
                     <br><div class="col-15">
                                <label for="cédula">Cédula:</label>
                                 <input type="number"  name="cédula" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"    placeholder="Escribe aquí tu cédula">
    
                            </div>
    
                            <br><div class="col-15">
                                <label for="Teléfono">Télefono/Celular:</label>
                                 <input type="number"  name="Télefono" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"    placeholder="Escribe aquí tu Télefono/Célular">
    
                            </div>
    
                          <br>
                           <div class="col-15">
                            <label for="nombre">Cuántas personas desean ingresar:</label>
                            <input type="number"  name="cédula" class="form-control" id="exampleInputEmail" aria-describedby="emailHelp"    placeholder="pon aquí el # de personas">
                            </div>
                        <br>
                        <div clas="row">
                            <button type="submit" class="btn btn-secondary">Guardar</button>
                            <button type="reset" class="btn btn-dark">Limpiar Formulario</button>
                        </div>
                        <br>
                        <br>     
                </form>
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
                </section>
            </footer>
</body>
</html>