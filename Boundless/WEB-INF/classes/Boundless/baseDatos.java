package Boundless;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.Date;

import java.util.Calendar;
import java.util.ArrayList;

import Boundless.Usuario;
import Boundless.Mercancia;

public class baseDatos {

    private Connection conexion;       // Conexión SQL

    //Contructor
    public baseDatos() {
        try {
            Class.forName ( "org.postgresql.Driver" );
        } catch (java.lang.ClassNotFoundException e) {
            System.out.println("PostgreSQL JDBC Driver no encontrado ");
        }


        //Se configura la conexión con el archivo .properties
        try {

            Properties usuario = new Properties();

            //Establecemos propiedades de usuario y contraseña
            usuario.setProperty("user", "postgres");
            usuario.setProperty("password", "Dthgm98&");
            //Creamos la conexión
            System.out.println("CONEXION PROBANDO");
            this.conexion = java.sql.DriverManager.getConnection("jdbc:postgresql://"
                    + "localhost:"
                    + "5432/"
                    + "Boundless",
                    usuario);
            System.out.println("CONEXION BIEN");
        //En caso de error capturamos la excepciones, imprimimos el mensaje y genereramos la ventana de excepción
        } catch (Exception i) {
            System.out.println(i.getMessage());
        }
    }

    //Permite insertar un nuevo usuario en la base de datos
    public void registrarUsuario(Usuario usuario) {
        //Declaramos variables
        Connection con;
        PreparedStatement stmUsuario = null;

        //Establecemos conexión
        con = this.conexion;

        //Intentamos la consulta SQL
        try {
            //Preparamos la consulta SQL para insertar en la tabla de pacientes un nuevo paciente con el id de paciente, nombre
            //clave, dirección, email y tipo de paciente especificados
            stmUsuario = con.prepareStatement("INSERT INTO public.usuario("
	        + "apellido1, correo, direccion, nombre, password, sexo, telf, apellido2, \"fechaNacimiento\", pais)"
	        + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
            //Sustituimos
            stmUsuario.setString(1, usuario.getApellido1());
            stmUsuario.setString(2, usuario.getCorreo());
            stmUsuario.setString(3, usuario.getDireccion());
            stmUsuario.setString(4, usuario.getNombre());
            stmUsuario.setString(5, usuario.getPassword());
            stmUsuario.setString(6, usuario.getSexo());
            stmUsuario.setString(7, usuario.getTelf());
            stmUsuario.setString(8, usuario.getApellido2());            
            stmUsuario.setDate(9, usuario.getFechaNacimiento());
            stmUsuario.setString(10, usuario.getPais());

            //Actualizamos
            stmUsuario.executeUpdate();
            System.out.println("Se ha introducido el nuevo usuario en la base de datos");

            //En caso de error se captura la excepción
        } catch (Exception ex) {
            //Se imprime el mensaje y se genera la ventana que muestra el mensaje
            System.out.println(ex.getMessage()+": Fallo al realizar la consulta");
        } finally {
            //Finalmente intentamos cerrar los cursores
            try {
                stmUsuario.close();
            } catch (Exception e) {
                //De no poder se notifica de ello
                System.out.println(e.getMessage()+": Imposible cerrar cursores");
            }
        }
    }

    //Permite recuperar un usuario de la base de datos a partir de su correo y contraseña
    public String validarAcceso(String correo, String contrasena) {
        //Declaramos variables
        Usuario resultado = null;
        Connection con;
        PreparedStatement stmUsuario = null;
        ResultSet rsUsuario;

        //Establecemos conexión
        con = this.conexion;

        //Intentamos la consulta SQL
        try {
            String cst = "select * from usuario where correo = ?";

            //Preparamos la sentencia donde se seleccionan todos los campos
            //de la tabla de usuarios que tengan como usuario y contraseña los proporcionados por argumentos
            stmUsuario = con.prepareStatement(cst);
            //Sustituimos
            stmUsuario.setString(1, correo);             //Id del usuario (correo)

            //Ejecutamos
            rsUsuario = stmUsuario.executeQuery();
            //Si existe algún resultado (que debe ser único)
            if (rsUsuario.next()) {
                //Generamos una instancia de usuario con los datos recuperados
                resultado = new Usuario();
                resultado.setPassword(rsUsuario.getString("password"));
                resultado.setNombre(rsUsuario.getString("nombre"));
            }
            System.out.println(correo);

            //En caso de error se captura la excepción
        } catch (Exception ex) {
            //Se imprime el mensaje y se genera la ventana que muestra el mensaje
            System.out.println(ex.getMessage()+": Fallo al realizar la consulta");
            //Finalmente se intenta cerrar los cursores
        } finally {
            try {
                stmUsuario.close();
                //De no poder se notifica de ello
            } catch (Exception e) {
                System.out.println(e.getMessage()+": Imposible cerrar cursores");
            }
        }

        if (resultado == null) {
            return null;
        }
        
        if(contrasena.equals(resultado.getPassword()))
            return resultado.getNombre();
        else 
            return null;
    }

    //Permite recuperar un usuario de la base de datos a partir de su correo
    public String validarRegistro(String correo) {
        //Declaramos variables
        Usuario resultado = null;
        Connection con;
        PreparedStatement stmUsuario = null;
        ResultSet rsUsuario;

        //Establecemos conexión
        con = this.conexion;

        //Intentamos la consulta SQL
        try {
            String cst = "select * from usuario where correo = ?";

            //Preparamos la sentencia donde se seleccionan todos los campos
            //de la tabla de usuarios que tengan como usuario y contraseña los proporcionados por argumentos
            stmUsuario = con.prepareStatement(cst);
            //Sustituimos
            stmUsuario.setString(1, correo);             //Id del usuario (correo)

            //Ejecutamos
            rsUsuario = stmUsuario.executeQuery();
            //Si existe algún resultado (que debe ser único)
            if (rsUsuario.next()) {
                //Generamos una instancia de usuario con los datos recuperados
                resultado = new Usuario();
                resultado.setPassword(rsUsuario.getString("password"));
                resultado.setNombre(rsUsuario.getString("nombre"));
            }
            System.out.println(correo);

            //En caso de error se captura la excepción
        } catch (Exception ex) {
            //Se imprime el mensaje y se genera la ventana que muestra el mensaje
            System.out.println(ex.getMessage()+": Fallo al realizar la consulta");
            //Finalmente se intenta cerrar los cursores
        } finally {
            try {
                stmUsuario.close();
                //De no poder se notifica de ello
            } catch (Exception e) {
                System.out.println(e.getMessage()+": Imposible cerrar cursores");
            }
        }

        if (resultado == null) {
            return null;
        }        
        else 
            return resultado.getNombre();
        
    }


    //Permite recuperar la mercancia de la BD
    public ArrayList<Mercancia> recuperarMercancia() {
        //Declaramos variables
        ArrayList<Mercancia> resultado = new ArrayList<>();
        Mercancia mer = null;
        Connection con;
        PreparedStatement stmMercancia = null;
        ResultSet rsMercancia;

        //Establecemos conexión
        con = this.conexion;

        //Intentamos la consulta SQL
        try {
            String cst = "select * from mercancia";
            //Preparamos la sentencia donde se seleccionan todos los campos
            stmMercancia = con.prepareStatement(cst);
            //Ejecutamos
            rsMercancia = stmMercancia.executeQuery();
            //Analizamos los resultados
            while(rsMercancia.next()) {
                //Generamos una instancia del prodcuto con los datos recuperados
                mer = new Mercancia();
                mer.setDescripcion(rsMercancia.getString("nombre"));
                mer.setImg(rsMercancia.getString("img"));
                mer.setCantidad(rsMercancia.getInt("cantidad"));
                mer.setPrecio(rsMercancia.getDouble("precio"));

                resultado.add(mer);
            }

            //En caso de error se captura la excepción
        } catch (Exception ex) {
            //Se imprime el mensaje y se genera la ventana que muestra el mensaje
            System.out.println(ex.getMessage()+": Fallo al realizar la consulta");
            //Finalmente se intenta cerrar los cursores
        } finally {
            try {
                stmMercancia.close();
                //De no poder se notifica de ello
            } catch (Exception e) {
                System.out.println(e.getMessage()+": Imposible cerrar cursores");
            }
        }

        return resultado;
    }

    //Permite recuperar la mercancia de la BD
    public Mercancia recuperarMercancia(String descripcion) {
        //Declaramos variables
        Mercancia mer = null;
        Connection con;
        PreparedStatement stmMercancia = null;
        ResultSet rsMercancia;

        //Establecemos conexión
        con = this.conexion;

        //Intentamos la consulta SQL
        try {
            String cst = "select * from mercancia where nombre = ?";
            //Preparamos la sentencia donde se seleccionan todos los campos
            stmMercancia = con.prepareStatement(cst);
            stmMercancia.setString(1, descripcion);

            //Ejecutamos
            rsMercancia = stmMercancia.executeQuery();
            //Si existe algún resultado (que debe ser único)
            if(rsMercancia.next()) {
                //Generamos una instancia del prodcuto con los datos recuperados
                mer = new Mercancia();
                mer.setDescripcion(rsMercancia.getString("nombre"));
                mer.setImg(rsMercancia.getString("img"));
                mer.setCantidad(rsMercancia.getInt("cantidad"));
                mer.setPrecio(rsMercancia.getDouble("precio"));
                
            }

            //En caso de error se captura la excepción
        } catch (Exception ex) {
            //Se imprime el mensaje y se genera la ventana que muestra el mensaje
            System.out.println(ex.getMessage()+": Fallo al realizar la consulta");
            //Finalmente se intenta cerrar los cursores
        } finally {
            try {
                stmMercancia.close();
                //De no poder se notifica de ello
            } catch (Exception e) {
                System.out.println(e.getMessage()+": Imposible cerrar cursores");
            }
        }

        return mer;
    }


    //Permite guardar el pedido en la base de datos
    public void realizarPedido(String correo, String pedido) {
        //Declaramos variables
        Mercancia mer = null;
        Connection con;
        PreparedStatement stmMercancia = null;
        ResultSet rsMercancia;

        //Establecemos conexión
        con = this.conexion;

        //Intentamos la consulta SQL
        try {
            String cst = "INSERT INTO public.pedido("+
            	"usuario, fecha, contenido)" +
	            "VALUES (?, ?, ?);";
            //Preparamos la sentencia donde se seleccionan todos los campos
            stmMercancia = con.prepareStatement(cst);
            stmMercancia.setString(1, correo);
            stmMercancia.setDate(2, new Date(Calendar.getInstance().getTimeInMillis()));
            stmMercancia.setString(3, pedido);

            //Ejecutamos
            rsMercancia = stmMercancia.executeQuery();
        } catch (Exception ex) {
            //Se imprime el mensaje y se genera la ventana que muestra el mensaje
            System.out.println(ex.getMessage()+": Fallo al realizar la consulta");
            //Finalmente se intenta cerrar los cursores
        } finally {
            try {
                stmMercancia.close();
                //De no poder se notifica de ello
            } catch (Exception e) {
                System.out.println(e.getMessage()+": Imposible cerrar cursores");
            }
        }
    }

    //Permite modificar la cantidad de elementos en stock de la base de datos
    public void actualizarStock(String producto, Integer nuevoStock) {
        //Declaramos variables
        Mercancia mer = null;
        Connection con;
        PreparedStatement stmMercancia = null;
        ResultSet rsMercancia;

        //Establecemos conexión
        con = this.conexion;

        //Intentamos la consulta SQL
        try {
            String cst = "UPDATE public.mercancia " +
            	"SET cantidad = cantidad-? " +
	            "WHERE nombre = ?";
            //Preparamos la sentencia donde se seleccionan todos los campos
            stmMercancia = con.prepareStatement(cst);
            stmMercancia.setInt(1, nuevoStock);
            stmMercancia.setString(2, producto);

            //Ejecutamos
            rsMercancia = stmMercancia.executeQuery();
        } catch (Exception ex) {
            //Se imprime el mensaje y se genera la ventana que muestra el mensaje
            System.out.println(ex.getMessage()+": Fallo al realizar la consulta");
            //Finalmente se intenta cerrar los cursores
        } finally {
            try {
                stmMercancia.close();
                //De no poder se notifica de ello
            } catch (Exception e) {
                System.out.println(e.getMessage()+": Imposible cerrar cursores");
            }
        }
    }
}

