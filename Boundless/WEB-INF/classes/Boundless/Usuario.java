package Boundless;

import java.sql.Date;

public class Usuario 
{
    private String nombre;
    private String apellido1;
    private String apellido2;
    private String correo;
    private String password;
    private Date fechaNacimiento;
    private String sexo;
    private String telf;
    private String pais;
    private String direccion;

    public Usuario(){
    }

    //Nombre
    public void setNombre(String nombre) {
	    this.nombre=nombre;
    }
    public String getNombre() {
	    return nombre;
    }
    //Primer apellido
    public void setApellido1(String apellido1) {
	    this.apellido1=apellido1;
    }
    public String getApellido1() {
	    return this.apellido1;
    }
    //Segundo apellido
    public void setApellido2(String apellido2) {
	    this.apellido2=apellido2;
    }
    public String getApellido2() {
	    return this.apellido2;
    }
    //Correo
    public void setCorreo(String correo) {
	    this.correo=correo;
    }
    public String getCorreo() {
	    return this.correo;
    }
    //Contraseña
    public void setPassword(String password) {
	    this.password=password;
    }
    public String getPassword() {
	    return this.password;
    }
    //Fecha nacimiento
    public void setFechaNacimiento(java.sql.Date fechaNacimiento) {
	    this.fechaNacimiento=fechaNacimiento;
    }
    public java.sql.Date getFechaNacimiento() {
	    return this.fechaNacimiento;
    }
    //Sexo
    public void setSexo(String sexo) {
	    this.sexo=sexo;
    }
    public String getSexo() {
	    return this.sexo;
    }
    //Pais
    public void setPais(String pais) {
	    this.pais=pais;
    }
    public String getPais() {
	    return this.pais;
    }
    //Telf
    public void setTelf(String telf) {
	    this.telf=telf;
    }
    public String getTelf() {
	    return this.telf;
    }
    //Direccion
    public void setDireccion(String direccion) {
	    this.direccion=direccion;
    }
    public String getDireccion() {
	    return this.direccion;
    }

}
