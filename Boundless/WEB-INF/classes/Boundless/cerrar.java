package Boundless;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import Boundless.Usuario;
import Boundless.baseDatos;

public class cerrar extends HttpServlet {

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

	// Creamos una nueva sesion
	HttpSession session = request.getSession(true);

	session.setAttribute("usuario", null);
	session.setAttribute("correoUsuario", null);

	// Presentamos los datos
	gotoPage("/Boundless/index.jsp", response);
	}

  
    private void gotoPage(String address, HttpServletResponse response)
	throws ServletException, IOException {
		response.sendRedirect(address);
    }

    public void destroy() 
    {
    }
}
