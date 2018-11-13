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
import java.util.logging.Logger;
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
public class Nueva_fauna extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("jsp/Nueva_fauna.jsp");
        List<String> tipos = new ArrayList<String>();
        tipos.add("Ave");
        tipos.add("mamifero");
        tipos.add("anfibios");
        tipos.add("corales");
        tipos.add("crustaceos");
        tipos.add("serpientes");
        req.setAttribute("tipos", tipos);
        req.setAttribute("Imagen", imagenes());
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher rd = req.getRequestDispatcher("jsp/Nueva_fauna.jsp");
        //recibir los datos del formulario
        String nombre = req.getParameter("nombre");
        String imagen = req.getParameter("imagen");
        String descripcion = req.getParameter("descripcion");
        String tipo = req.getParameter("tipo");
        //llamar a un metodo q guarde
        guardarImagen(nombre, imagen, descripcion, tipo);
        
        
        List<String> tipos = new ArrayList<String>();
        tipos.add("Ave");
        tipos.add("mamifero");
        tipos.add("anfibios");
        tipos.add("corales");
        tipos.add("crustaceos");
        tipos.add("serpientes");
        req.setAttribute("tipos", tipos);
        req.setAttribute("Imagen", imagenes());
        rd.forward(req, resp);
    
        
        if(idaveStr != null && !idaveStr.equals("")){
            int idave = Integer.parseInt(idaveStr);
            actualizarImagen(idave, nombre, imagen, descripcion, tipo);
        } else {
            guardarImagen(nombre, imagen, descripcion, tipo);
        }
        
        List<Imagen> imagenes = imagenes();
        req.setAttribute("imagenes", imagenes);
        
        rd.forward(req, resp);
    }


    

    private void guardarImagen(String nombre, String imagen, String descripcion, String tipo) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO animal (nombre, imagen, descripcion, tipo) VALUES (?, ?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, imagen);
            ps.setString(3, descripcion);
            ps.setString(4, tipo);
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
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM tipo");
            ResultSet resultados = ps.executeQuery();
            while (resultados.next()) {
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

    List<Imagen> imagenes() {
        List<Imagen> listaImagenes = new ArrayList<Imagen>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM animal");
            ResultSet resultados = ps.executeQuery();
            while (resultados.next()) {
                int idave = resultados.getInt("idave");
                String nombre = resultados.getString("nombre");
                String imagen = resultados.getString("imagen");
                String descripcion = resultados.getString("descripcion");
                String tipo = resultados.getString("tipo");
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

    private void actualizarImagen(int idave, String nombre, String imagen, String descripcion, String tipo) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO animal (nombre, imagen, descripcion, tipo) VALUES (?, ?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, imagen);
            ps.setString(3, descripcion);
            ps.setString(4, tipo);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Nueva_fauna.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Nueva_fauna.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
