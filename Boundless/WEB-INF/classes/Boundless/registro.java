package Boundless;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import java.sql.Date;

import Boundless.Usuario;
import Boundless.baseDatos;

public class registro extends HttpServlet {

    public void init(ServletConfig config)
	throws ServletException {

	super.init(config);
    }

    public void doGet(HttpServletRequest request,
		      HttpServletResponse response)
	throws ServletException, IOException 
    {
	// If it is a get request forward to doPost()
	doPost(request, response);
    }

    public void doPost(HttpServletRequest request,
		       HttpServletResponse response)
	throws ServletException, IOException 
    {

	// Obtenemos el correo de usuario a partir de la peticion
	String correo = request.getParameter("correo");
	// Obtenemos la contraseña a partir de la peticion
	String password = request.getParameter("password");

	// Creamos una nueva sesion
	HttpSession session = request.getSession(true);

	// Comprobamos que exista
	baseDatos BD = new baseDatos();

	String nombreUsuario = BD.validarRegistro(correo);

	if(nombreUsuario == null){
		
		// Obtenemos el resto de datos
		Usuario usuario = new Usuario();

        usuario.setNombre(request.getParameter("nombre"));
		usuario.setApellido1(request.getParameter("apellido1"));
        usuario.setApellido2(request.getParameter("apellido2"));            
        usuario.setCorreo(correo);
        usuario.setPassword(password);
        usuario.setFechaNacimiento(Date.valueOf(request.getParameter("fecha")));
        usuario.setSexo(request.getParameter("gender"));
        usuario.setTelf(request.getParameter("telf"));
		usuario.setPais(request.getParameter("pais"));
        usuario.setDireccion(request.getParameter("direccion"));

		BD.registrarUsuario(usuario);

		//Creamos el usuario
		session.setAttribute("usuario", usuario.getNombre());
		session.setAttribute("correoUsuario", correo);

		// Presentamos los datos
		gotoPage("/Boundless/index.jsp", response);
	}
	else{
		//Marcamos el error
		gotoPage("/Boundless/paginas/vistaAcceso.jsp?errorRegistro=error", response);
	}

	
    }

    private void gotoPage(String address, HttpServletResponse response)
	throws ServletException, IOException {
		response.sendRedirect(address);
    }

    public void destroy() 
    {
    }
}
