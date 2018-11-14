<%-- 
    Document   : nueva-imagen
    Created on : 12/09/2018, 08:21:27 AM
    Author     : USUARIO
--%>

<%@page import="modelos.Imagen"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva Fauna</title>
        <link rel="shortcut icon" href="imagenes/img7.png" />
        <link rel="stylesheet" href="bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" 
              crossorigin="anonymous"/>
    </head>
    <body>

        <%@page import="java.util.List" %>
        <%@page import="modelos.Animales" %>
        <%
            List<String> tipos = (List<String>) request.getAttribute("tipos");
            List<Imagen> listaImagenes = (List<Imagen>) request.getAttribute("Imagen");
        %>
        <h1>Formulario para agregar un animal a la fauna</h1>
        <form name="Nueva_fauna" action="Nueva_fauna" method="POST">
            <span>nombre</span><input type="text" name="nombre" />
            <span>imagen</span><input type="text" name="imagen" />
            <span>descripcion</span><input type="text" name="descripcion" />
            <span>tipo</span>

            <select name="tipo">
                <%
                    for (String t : tipos) {%>
                <option value="<%= t%>"><%= t%></option>
                <%
                    }%>
            </select>

            <button type="submit" class="btn btn-secondary">Guardar imagen</button>

        </form>
       
        <script>
            function editarImagen(id, nombre, imagen, descripcion, tipo) {
                //alert(id + " " + nombre + " " + ruta);
                var inputId = document.getElementById("idimagenes");
                var inputNombre = document.getElementById("nombre");
                var inputImagen = document.getElementById("imagen");
                var inputDescripcion = document.getElementById("descripcion");
                var inputTipo = document.getElementById("tipo");

                inputId.value = id;
                inputNombre.value = nombre;
                inputImagen.value = imagen;
                inputDescripcion.value = descripcion;
                inputTipo.value = tipo;
            }
        </script>
    </form>
</body>
</html>
