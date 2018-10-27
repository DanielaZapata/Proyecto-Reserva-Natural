/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controladores;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "Comentarios", urlPatterns = {"/Comentarios"})
public class Comentarios extends HttpServlet {

    private String apelldios;
    private int tipo;


    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("jsp/Comentarios.jsp");
        rd.forward(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("jsp/Comentarios.jsp");
        
        //recibimos los datos del formulario
        String nombre = request.getParameter("nombre");
        String apellidos = request.getParameter("apellidos");
        String email = request.getParameter("email");
        String pais = request.getParameter("pais");
        String ciudad = request.getParameter("ciudad");
        String barrio = request.getParameter("barrio");
        String telefono = request.getParameter("telefono");
        String celular = request.getParameter("celular");
        String aceptar_requisitos = request.getParameter("aceptar_requisitos");
        guardarComentario(nombre, apellidos,email,pais,ciudad,barrio,telefono,celular,aceptar_requisitos);
        
        rd.forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void guardarComentario(String nombre, String apellidos, String email, String pais, String ciudad, String barrio, String telefono, String celular, String aceptar_requisitos) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ejemplo", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO `ejemplo`.`imagenes` (`nombre`, `apellido`, tipo) VALUES (?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, apelldios);
            ps.setInt(3, tipo);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Comentarios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Comentarios.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
