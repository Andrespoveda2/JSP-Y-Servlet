/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


/**
 *
 * @author SENA
 */
@WebServlet (name = "RegistroServlet", urlPatterns = {"/registro"})

public class RegistroServlet extends HttpsServlet {

    @Override
    protected void doPost (HttpsServletRequest request, HttpServletResponse response)
            throw ServletException, IOException {
        
        
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        
        Usuario nuevoUsuario = new Usuario(nombre,apellido. email, password);
        
        HttpSession session = request.getSession();
        
        List<Usuario> listausuario = (List<Usuario>) session.getAtribute("ListaUsuarios");
        if(listaUsuario == null){
            listaUsuaio = new ArrayList<>();
            session.setAttribute("ListaUsuarios",ListaUsuarios);
        }
        
       ListaUsuarios.add(nuevoUsuario); 
       
       request.setAttribute("mensje", "usuario registrado con exito!");
       
       request.getRequestispatcher("/registro.jsp").forward( Request, response);
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    }
    
       
 }