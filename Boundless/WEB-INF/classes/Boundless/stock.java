package Boundless;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import Boundless.baseDatos;
import Boundless.Mercancia;

public class stock extends HttpServlet {

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

	baseDatos BD = new baseDatos();

	ArrayList<Mercancia> mer = BD.recuperarMercancia();

	for(Mercancia m: mer)
		System.out.println(m.getDescripcion());

	session.setAttribute("vectorMercancia", mer);
	//Marcamos el error
	gotoPage("/Boundless/paginas/vistaTienda.jsp", response);
	}

    private void gotoPage(String address, HttpServletResponse response)
	throws ServletException, IOException {
		response.sendRedirect(address);
    }

    public void destroy() 
    {
    }
}
