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
public class Compra {
    
    private int id_compra;
    private String fecha_compra;
    private String num_guia;
    private int num_pollos;
    private String descripcion;
    private double precio_kilo;
    private double can_kilo;
    private double total_compra;

    public Compra(int id_compra, String fecha_compra, String num_guia, int num_pollos, String descripcion, double precio_kilo, double can_kilo, double total_compra) {
        this.id_compra = id_compra;
        this.fecha_compra = fecha_compra;
        this.num_guia = num_guia;
        this.num_pollos = num_pollos;
        this.descripcion = descripcion;
        this.precio_kilo = precio_kilo;
        this.can_kilo = can_kilo;
        this.total_compra = total_compra;
    }

    public Compra() {
    }
    
    

    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public String getFecha_compra() {
        return fecha_compra;
    }

    public void setFecha_compra(String fecha_compra) {
        this.fecha_compra = fecha_compra;
    }

    public String getNum_guia() {
        return num_guia;
    }

    public void setNum_guia(String num_guia) {
        this.num_guia = num_guia;
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

    public double getTotal_compra() {
        return total_compra;
    }

    public void setTotal_compra(double total_compra) {
        this.total_compra = total_compra;
    }
    
    
    
}
