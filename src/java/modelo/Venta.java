/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Date;

/**
 *
 * @author kevin
 */
public class Venta {
    
    private int id_venta;
    private String fecha_venta;
    private int num_pollos;
    private String descripcion;
    private double precio_kilo;
    private double can_kilo;
    private double total_venta;
    private int id_cliente;
    private String cliente_nombre;

    public Venta() {
    }

    public String getCliente_nombre() {
        return cliente_nombre;
    }

    public void setCliente_nombre(String cliente_nombre) {
        this.cliente_nombre = cliente_nombre;
    }

 

    public Venta(int id_venta, String fecha_venta, int num_pollos, String descripcion, double precio_kilo, double can_kilo, double total_venta, int id_cliente) {
        this.id_venta = id_venta;
        this.fecha_venta = fecha_venta;
        this.num_pollos = num_pollos;
        this.descripcion = descripcion;
        this.precio_kilo = precio_kilo;
        this.can_kilo = can_kilo;
        this.total_venta = total_venta;
        this.id_cliente = id_cliente;
    }

    public int getId_venta() {
        return id_venta;
    }

    public void setId_venta(int id_venta) {
        this.id_venta = id_venta;
    }

    public String getFecha_venta() {
        return fecha_venta;
    }

    public void setFecha_venta(String fecha_venta) {
        this.fecha_venta = fecha_venta;
    }

    public int getNum_pollos() {
        return num_pollos;
    }

    public void setNum_pollos(int num_pollos) {
        this.num_pollos = num_pollos;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public double getPrecio_kilo() {
        return precio_kilo;
    }

    public void setPrecio_kilo(double precio_kilo) {
        this.precio_kilo = precio_kilo;
    }

    public double getCan_kilo() {
        return can_kilo;
    }

    public void setCan_kilo(double can_kilo) {
        this.can_kilo = can_kilo;
    }

    public double getTotal_venta() {
        return total_venta;
    }

    public void setTotal_venta(double total_venta) {
        this.total_venta = total_venta;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }
    
    
    
    
    
    
}
