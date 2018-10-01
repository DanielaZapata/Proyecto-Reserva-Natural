/*
 * To change this template, choose Tools | Templates
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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelos.Dato;

/**
 *
 * @author Usuario
 */
public class Contactenos extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
      protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = request.getRequestDispatcher("jsp/Contactenos.jsp");
        rd.forward(request, response);
    } 
      
       List<Dato> dato() throws SQLException {
        List<Dato> listaDato = new ArrayList<Dato>();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM contactenos");
            ResultSet resultados = ps.executeQuery();
            while(resultados.next()) {
                String nombre = resultados.getString("Nombre");
                String telefono = resultados.getString("Telefono");
                String correo = resultados.getString("Correo");
                Dato i = new Dato();
                i.nombre = nombre;
                i.telefono = telefono;
                i.correo = correo;
                listaDato.add(i);
            }
               conexion.close();
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Contactenos.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Contactenos.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaDato;
    }
}
