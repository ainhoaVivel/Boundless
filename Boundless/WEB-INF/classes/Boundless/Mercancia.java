package Boundless;

import java.sql.Date;

public class Mercancia 
{
    private String decripcion;
    private String img;
    private Integer cantidad;
    private Double precio;

    public Mercancia(){
    }

    //Descripcion
    public void setDescripcion(String decripcion) {
	    this.decripcion=decripcion;
    }
    public String getDescripcion() {
	    return decripcion;
    }
    //Imagen
    public void setImg(String img) {
	    this.img=img;
    }
    public String getImg() {
	    return this.img;
    }
    //Cantidad
    public void setCantidad(Integer cantidad) {
	    this.cantidad=cantidad;
    }
    public Integer getCantidad() {
	    return this.cantidad;
    }
    //Precio
    public void setPrecio(Double precio) {
	    this.precio=precio;
    }
    public Double getPrecio() {
	    return this.precio;
    }

}
