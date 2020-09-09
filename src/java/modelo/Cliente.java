/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author kevin
 */
public class Cliente {
    
    private int id_cliente ;
    private String cod_dni;
    private String nombre;
    private String celular;
    private String correo;
    private String direccion ;
    private String descripcion ;

    public Cliente() {
    }

    public Cliente(int id_cliente, String cod_dni, String nombre, String celular, String correo, String direccion, String descripcion) {
        this.id_cliente = id_cliente;
        this.cod_dni = cod_dni;
        this.nombre = nombre;
        this.celular = celular;
        this.correo = correo;
        this.direccion = direccion;
        this.descripcion = descripcion;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getCod_dni() {
        return cod_dni;
    }

    public void setCod_dni(String cod_dni) {
        this.cod_dni = cod_dni;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    
    
    
}
