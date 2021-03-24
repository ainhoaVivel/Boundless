package Boundless;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import Boundless.Usuario;
import Boundless.baseDatos;

public class login extends HttpServlet {

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
	// Obtenemos la contrasenha a partir de la peticion
	String password = request.getParameter("password");

	// Creamos una nueva sesion
	HttpSession session = request.getSession(true);

	// Comprobamos que exista
	baseDatos BD = new baseDatos();

	String nombreUsuario = BD.validarAcceso(correo, password);
	
	if(nombreUsuario != null){
		//Añadimos el usuario a la sessión
		session.setAttribute("usuario", nombreUsuario);
		session.setAttribute("correoUsuario", correo);
		// Presentamos los datos
		gotoPage("/Boundless/index.jsp", response);
	}
	else{
		//Marcamos el error
		gotoPage("/Boundless/paginas/vistaAcceso.jsp?errorLogin=error", response);
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
