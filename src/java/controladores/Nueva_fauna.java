/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Imagen;

/**
 *
 * @author User
 */
public class Nueva_fauna extends HttpServlet {

 private void guardarImagen(String nombre, String imagen, String descripcion, int tipo) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO `ejemplo`.`imagenes` (`nombre`, `imagen`, 'descripcion', tipo) VALUES (?, ?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, imagen);
            ps.setString(3, descripcion);
            ps.setInt(4, tipo);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Nueva_fauna.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Nueva_fauna.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    List<Animal> tipos() {
        List<Animal> listaAnimales = new ArrayList<Animal>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM tipo");
            ResultSet resultados = ps.executeQuery();
            while(resultados.next()) {
                int id = resultados.getInt("id");
                String nombre = resultados.getString("nombre");
                Animal t = new Animal();
                t.id = id;
                t.nombre = nombre;
                listaAnimales.add(t);
            }
            conexion.close();
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Nueva_fauna.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Nueva_fauna.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaAnimales;
    }

    List<Imagenes> imagenes() {
        List<Imagenes> listaImagenes = new ArrayList<Imagenes>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM imagenes");
            ResultSet resultados = ps.executeQuery();
            while(resultados.next()) {
                int idave = resultados.getInt(" idave");
                String nombre = resultados.getString("nombre");
                String imagen = resultados.getString("imagen");
                String descripcion = resultados.getString("descripcion");
                Imagen i = new Imagen();
                i.idave = idave;
                i.nombre = nombre;
                i.imagen = imagen;
                i.descripcion = descripcion;
                listaImagenes.add(i);
            }
            conexion.close();
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Fauna.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Fauna.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaImagenes;
    }

    private void actualizarImagen(int idimagenes, String nombre, String ruta, int tipo) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("UPDATE `ejemplo`.`imagenes` SET `nombre` = ?, `ruta` = ?, `tipo` = ? WHERE `idimagenes` = ?");
            ps.setString(1, nombre);
            ps.setString(2, ruta);
            ps.setInt(3, tipo);
            ps.setInt(4, idimagenes);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(NuevaImagen.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(NuevaImagen.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
