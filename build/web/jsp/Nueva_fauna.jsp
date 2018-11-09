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
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@page import="java.util.List" %>
        <%@page import="modelos.Animales" %>
        <%
        List<Animal> listaAnimales = (List<Animal>)request.getAttribute("Animal");
        List<Imagenes> listaImagenes = (List<Imagenes>)request.getAttribute("imagenes");
        %>
        <h1>Formulario para agregar un animal a la fuana</h1>
        <form name="nueva-imagen" action="Nueva_fauna" method="POST">
            <span>nombre</span><input type="text" name="nombre" />
            <span>imagen</span><input type="text" name="imagen" />
            <span>descripcion</span><input type="text" name="descripcion" />
            <span>tipo</span>
            
            <select name="tipo">
                <%
                for(Animales t : listaAnimales) {%>
                <option value="<%= t.id%>"><%= t.nombre%></option>
                <%
                }%>
            </select>
            
            <button type="submit">Guardar imagen</button>
            
            </form>
            <table border="1">
                <thead>
                    <tr>
                        <th>id imagen</th>
                        <th>Nombre</th>
                        <th>Descripción</th>
                        <th>Ruta</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    for(NuevaImagen  i : listaImagenes) {%>
                    <tr>
                        <td><%= i.idave%></td>
                        <td><%= i.nombre%></td>
                        <td><%= i.imagen%></td>
                        <td><%= i.descripcion%></td>
                        <td><image class="edit" onclick="editarImagen(<%= i.idave%>, '<%= i.nombre%>', '<%= i.imagen%>', '<%= i.descripcion%>')" src="https://icon-icons.com/icons2/906/PNG/512/pencil_icon-icons.com_69999.png" /></td>
                    </tr>
                    <%
                    }%>
                </tbody>
            </table>
            <script>
                function editarImagen(id, nombre, imagen, descripcion){
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
        </form>
    </body>
</html>
