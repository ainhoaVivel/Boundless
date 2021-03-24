package Boundless;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import Boundless.Mercancia;

/** Servlet para almacenar productos seleccionados por el usuario */

public class carro extends HttpServlet {

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
      /////////////////DATOS DEL FORMULARIO
      // Almacenamos los parametros de entrada en variables temporales
      String cantidadString = request.getParameter("cantidad");      
      Integer cantidad = new Integer(0);


      String stockString = request.getParameter("stock");      
      Integer stock = null;
      if(stockString != null){
        stock = Integer.parseInt(stockString);
      }
      String mercanciaString = request.getParameter("descripcionMercancia");      
      

      //Si no se ha introducido un número
      if (cantidadString == null){
        cantidad=-1;
      }
      else{    
        // Convertimos "numero" a entero
        cantidad = Integer.parseInt(cantidadString);

        //Si se ha introducido un número negativo se interpreta como un 0
        if(cantidad<0) 
          cantidad=0;
      }
      
      // Recuperamos la descripción del producto
      if(mercanciaString != null) {
        
        baseDatos BD = new baseDatos();
        Mercancia mer = new Mercancia(); 
        
        // Creamos una nueva sesion
        HttpSession session = request.getSession(true);

        // Recuperamos lista de la sesión
        // Si es la primera vez, creamos la lista
        carro = (ArrayList<Mercancia>)session.getAttribute("carrito");
        
        boolean e = false;

        if ( carro == null )
          {	
            // Creamos la lista
            carro = new ArrayList<>();          
            
            mer = BD.recuperarMercancia(mercanciaString);
            mer.setCantidad(cantidad);
            
            // COMPLETAR: Introducimos el producto en la lista
            carro.add(mer);

          }
        //De existir una lista previa
        else{
          mer.setCantidad(cantidad);
          for (Mercancia aux : carro ){
              if(aux.getDescripcion().equals(mercanciaString)){
                  e = true;                      
                  if(aux.getCantidad()+mer.getCantidad() < 1){
                      //Borramos el producto de la lista
                      carro.remove(carro.indexOf(aux));
                      break;
                  }
                  else{
                      if(stock != null){
                        if(aux.getCantidad()+mer.getCantidad() > stock){
                          session.setAttribute("carrito", carro);
                          // Presentamos los datos
                          gotoPage("/Boundless/paginas/vistaCarro.jsp?stockMax=true&mercanciaString="+mercanciaString, response);  
                          return;
                        }
                        else {
                          aux.setCantidad(aux.getCantidad() + mer.getCantidad());
                        }
                      }
                      else{
                        if(mer.getCantidad() < 0){
                          aux.setCantidad(aux.getCantidad() + mer.getCantidad());
                        }
                      }
                  }
              }
          }
          if(e==false){
              mer = BD.recuperarMercancia(mercanciaString);
              mer.setCantidad(cantidad);

              //Introducimos el producto en la lista
              carro.add(mer);
          }
        }
        session.setAttribute("carrito", carro);
      }
      // Presentamos los datos
      gotoPage("/Boundless/paginas/vistaCarro.jsp", response);
     
    }
  

    private void gotoPage(String address, HttpServletResponse response)
	throws ServletException, IOException {
		response.sendRedirect(address);
    }

    public void destroy() 
    {
    }
}
