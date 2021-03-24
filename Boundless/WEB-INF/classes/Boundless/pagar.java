package Boundless;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import Boundless.Mercancia;


public class pagar extends HttpServlet {

    private ArrayList<Mercancia> carro;

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

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {     
        // Obtenemos el resumen del pedido
	    String resumenPedido = request.getParameter("resumenPedido"); 

        // Creamos una nueva sesion
        HttpSession session = request.getSession(true);

        //Accedemos a la BD
        baseDatos BD = new baseDatos();

        //Lo desglosamos
        for(String s: resumenPedido.split("\\;")){
            String[] res = s.split("\\&");
            String descripcionString = res[0];  // Descripcion

            String cantidadString = res[1];     // Cantidad comprada 

            //Convertimos la cantidad
            Integer cantidad = Integer.parseInt(cantidadString);

            BD.actualizarStock(descripcionString, cantidad);
            BD.realizarPedido((String)session.getAttribute("correoUsuario"), resumenPedido);

        }


        //BORRAMOS EL CARRITO 
        session.setAttribute("carrito", null); 

        // Presentamos los datos
        gotoPage("/Boundless/paginas/vistaCompra.jsp", response);
     
    }
  

    private void gotoPage(String address, HttpServletResponse response)
	throws ServletException, IOException {
		response.sendRedirect(address);
    }

    public void destroy() 
    {
    }

      //Nota: La redirección a la página de pagos podría haberse hecho con botones quitándoles el borde y el fondo, 
      //pero he preferido utilizar un hiperenlace y métodos Jquery para gestionar el envío del segundo formulario.
  
}

