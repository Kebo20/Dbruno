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
public class Pago {
    
    
    private int id_pago;
    private String fecha_pago;
    
    private double saldo_total;
    private double pago_diario;
    private int id_cliente;

    public Pago() {
    }

    public Pago(int id_pago, String fecha_pago, double saldo_total, double pago_diario, int id_cliente) {
        this.id_pago = id_pago;
        this.fecha_pago = fecha_pago;
        
        this.saldo_total = saldo_total;
        this.pago_diario = pago_diario;
        this.id_cliente = id_cliente;
    }

    public int getId_pago() {
        return id_pago;
    }

    public void setId_pago(int id_pago) {
        this.id_pago = id_pago;
    }

    public String getFecha_pago() {
        return fecha_pago;
    }

    public void setFecha_pago(String fecha_pago) {
        this.fecha_pago = fecha_pago;
    }
    

 

    public double getSaldo_total() {
        return saldo_total;
    }

    public void setSaldo_total(double saldo_total) {
        this.saldo_total = saldo_total;
    }

    public double getPago_diario() {
        return pago_diario;
    }

    public void setPago_diario(double pago_diario) {
        this.pago_diario = pago_diario;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }
    
    
    
    
}
