
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
        String opinion = request.getParameter("opinion");
        
        
        guardarComentario(nombre, apellidos,email,pais,ciudad,barrio,telefono,celular,opinion);
        
        rd.forward(request, response);
        
            List<String> comentarios = new ArrayList<String>();
            comentarios.add("Nombres");
            comentarios.add("Apellidos");
            comentarios.add("Opinion");
            request.setAttribute("comentarios", Comentarios());
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

    private void guardarComentario(String nombre, String apellidos, String email, String pais, String ciudad, String barrio, String telefono, String celular, String Opinion) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("INSERT INTO `reservanatural`.`comentarios` (`Nombres`, `Apellidos`, `Correo`, `Pais`, `Ciudad`, `Barrio`, `Telefono`, `Celular`, `Opinion`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            ps.setString(1, nombre);
            ps.setString(2, apellidos);
            ps.setString(3, email);
            ps.setString(4, pais);
            ps.setString(5, ciudad);
            ps.setString(6, barrio);
            ps.setString(7, telefono);
            ps.setString(8, celular);
            ps.setString(9, Opinion);
            ps.execute();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Comentarios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Comentarios.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    List<Comentario> Comentarios(){
        List<Comentario> listaComentarios = new ArrayList<Comentario> ();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/reservanatural", "root", "");
            PreparedStatement ps = conexion.prepareStatement("SELECT * FROM .comentarios");
            ResultSet resultados = ps.executeQuery();
            while (resultados.next()){
                int idcomentarios = resultados.getInt("idcomentarios");
                String Nombres = resultados.getString("Nombres");
                String Apellidos = resultados.getString("Apellidos");
                String Opinion = resultados.getString("Opinion");
                Comentario t = new Comentario();
                t.idcomentarios = idcomentarios;
                t.Nombres = Nombres;
                t.Apellidos = Apellidos;
                t.Opinion = Opinion;
                
                listaComentarios.add(t);
            }
            conexion.close();
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Comentarios.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            java.util.logging.Logger.getLogger(Comentarios.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaComentarios;
    }
}
