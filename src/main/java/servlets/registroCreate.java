/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import DAOS.UsuarioDAO;
import Datos.Usuario;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author james Alonso
 */
public class registroCreate extends HttpServlet {
    public static String categoryToString(int x){
        String category="";
        int numero = x;
        if(numero==1){
            category="Profesor";
        } else if(numero==2){
            category="Estudiante";
        }
        return category;
    }
    public static String careerToString(int x){
        String carrera="";
        int numero = x;
        if(numero==1){
           carrera="Administrador de Empresas";
        } else if(numero==2){
           carrera="Ingenieria de Sistemas";
        } else if(numero==3){
           carrera="Ingenieria Electronica";
        }else if(numero==4){
            carrera="Ingenieria Ambiental";
        }else if(numero==5){
            carrera="Marketing";
        }else if(numero==6){
            carrera="Comunicacion Social";
        }else if(numero==7){
            carrera="Publicidad";
        }else if(numero==8){
            carrera="Derecho";
        }else if(numero==9){
            carrera="Economia";
        }else if(numero==10){
            carrera="Ingenieria Industrial";
        }
        return carrera;
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // reading the user input
        
        String firstname = request.getParameter("firstName");
        String lastname =request.getParameter("lastName");
        int category=Integer.parseInt(request.getParameter("category"));
        int career=Integer.parseInt(request.getParameter("career"));
        int semester=Integer.parseInt(request.getParameter("semester"));
        int typeDocument=Integer.parseInt(request.getParameter("typeDocument"));
        String numDocument=request.getParameter("numDocument");
        String password=request.getParameter("password");
        String mail=request.getParameter("mail");
        
        
        
        
        //Se debe incluir validaciones - Lo recuerda: Gestion de Excepciones.
        
        UsuarioDAO dao = new UsuarioDAO();
        Usuario usuario = new Usuario();
        //No se esta haciendo un culo con el correo y el con tipo de documento!!!
        
        usuario.setNombreusuario(firstname);
        usuario.setApellidousuario(lastname);
        usuario.setCargousuario(categoryToString(category));
        usuario.setCarrerausuario(careerToString(career));
        usuario.setSemestreusuario(semester);
        usuario.setIdusuario(numDocument);
        usuario.setContrasena(password);
        
        
        try {
            dao.create(usuario);
            //Existe un problema con el DAO, probablemente es porque no se hace mencion de administrativo.
        } catch (Exception ex) {
            Logger.getLogger(registroCreate.class.getName()).log(Level.SEVERE, null, ex);
        }
       
        //Redireccionando la informacion
        RequestDispatcher redireccion = request.getRequestDispatcher("index.html");
        redireccion.forward(request, response);
        
        
        }
}
