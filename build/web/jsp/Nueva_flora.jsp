<%-- 
    Document   : nueva-imagen
    Created on : 12/09/2018, 08:21:27 AM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva flora</title>
        <link rel="shortcut icon" href="imagenes/img7.png" />
        <link rel="stylesheet" href="bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B"
              crossorigin="anonymous" />
        <style>
            table img {
                width: 200px;
            }
        </style>    
    </head>

    <body>

        <%@page import="java.util.List" %>
        <%@page import="modelos.Imagen"%>
        <%
            List<Imagen> listaImagenes = (List<Imagen>) request.getAttribute("listaflora");
        %>
        <h1>Formulario para agregar una planta a la flora</h1>
        <form name="Nueva_flora" action="Nueva_flora" method="POST">
            <input type="hidden" id="idimagenes" name="idflora"/>
            <span>nombre</span><input type="text" name="nombre" id="nombre" />
            <span>imagen</span><input type="text" name="imagen" id="imagen" />
            <span>descripcion</span><input type="text" name="descripcion" id="descripcion" />

            <button type="submit" class="btn btn-secondary">Guardar imagen</button>

        </form>

        <table>
            <tr>
                <th>Nombre</th>
                <th>Imagen</th>
                <th>Descripción</th>
                <th>editar</th>
            </tr>
            <%
            for (Imagen i : listaImagenes) {%>
            <tr>
                <td><%= i.nombre%></td>
                <td><img src="<%= i.imagen%>"> </td>
                <td><%= i.descripcion%></td>
                <td>
                    <button 
                        type="button" 
                        onclick="editarImagen('<%= i.idflora%>','<%= i.nombre%>','<%= i.imagen%>','<%= i.descripcion%>')">
                        click para editar
                    </button>
                </td>
            </tr>
            <%}
            %>
        </table>
        <script>
            function editarImagen(id, nombre, imagen, descripcion ) {
                //alert(id + " " + nombre + " " + ruta);
                var inputId = document.getElementById("idimagenes");
                var inputNombre = document.getElementById("nombre");
                var inputImagen = document.getElementById("imagen");
                var inputDescripcion = document.getElementById("descripcion");

                inputId.value = id;
                inputNombre.value = nombre;
                inputImagen.value = imagen;
                inputDescripcion.value = descripcion;
            }
        </script>
    </body>

</html>