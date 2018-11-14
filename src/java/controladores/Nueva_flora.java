/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Imagen;

/**
 *
 * @author User
 */
public class Nueva_flora extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("jsp/Nueva_flora.jsp");
        req.setAttribute("listaflora", imagenes());
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("jsp/Nueva_flora.jsp");
        //recibir los datos del formulario
        String id = req.getParameter("idflora");
        String nombre = req.getParameter("nombre");
        String imagen = req.getParameter("imagen");
        String descripcion = req.getParameter("descripcion");
        if(id != null && id.equals("")) {
            //llamar a un metodo q guarde
            guardarImagen(nombre, imagen, descripcion);
        } else {
            System.out.println("el id es: " +  id);
            int idflora = Integer.parseInt(id);
            actualizarImagen(idflora, nombre, imagen, descripcion);
        }
        
        req.setAttribute("listaflora", imagenes());
        rd.forward(req, resp);

    }

    private void guardarImagen(String nombre, String imagen, String descripcion) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO reservanatural.flora (nombre, imagen, descripcion) VALUES (?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, imagen);
            ps.setString(3, descripcion);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Nueva_flora.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Nueva_flora.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    List<Imagen> imagenes() {
        List<Imagen> listaImagenes = new ArrayList<Imagen>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM flora");
            ResultSet resultados = ps.executeQuery();
            while (resultados.next()) {
                int idflora = resultados.getInt("idflora");
                String nombre = resultados.getString("nombre");
                String imagen = resultados.getString("imagen");
                String descripcion = resultados.getString("descripcion");
                Imagen i = new Imagen();
                i.idflora = idflora;
                i.nombre = nombre;
                i.imagen = imagen;
                i.descripcion = descripcion;
                listaImagenes.add(i);
            }
            conexion.close();
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Flora.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Flora.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaImagenes;
    }

    private void actualizarImagen(int idflora, String nombre, String imagen, String descripcion) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("UPDATE `reservanatural`.`flora` SET `Nombre`=?, `Imagen`=?, `Descripcion`=? WHERE `idflora`=?;");
            ps.setString(1, nombre);
            ps.setString(2, imagen);
            ps.setString(3, descripcion);
            ps.setInt(4, idflora);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Nueva_flora.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Nueva_flora.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
