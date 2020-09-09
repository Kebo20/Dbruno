/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Pago;

/**
 *
 * @author kevin
 */
public class PagoDao {
    
    public static boolean insertar(Pago p){
        
        try {
            String sql= "insert into pago (fecha_pago,saldo_total,pago_diario,id_cliente) values (?,?,?,?)";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setString(1, p.getFecha_pago());
           
            ps.setDouble(2, p.getSaldo_total());
            ps.setDouble(3, p.getPago_diario());
            ps.setInt(4, p.getId_cliente());
            
            if(ps.executeUpdate()>0){
                ps.close();
                con.close();
                return true;
            }else{
                return false;
            }
             
              
        } catch (SQLException ex) {
            return false;
        }
    }
        
        
public static boolean actualizar(Pago p){
        
        try {
            String sql= "update pago set fecha_pago=?, saldo_total=?, pago_diario=?,  where id_pago=? ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setString(1, p.getFecha_pago());
            
            ps.setDouble(2, p.getSaldo_total());
            ps.setDouble(3, p.getPago_diario());
            ps.setInt(4, p.getId_pago());
            
            if(ps.executeUpdate()>0){
                ps.close();
                con.close();
                return true;
            }else{
                return false;
            }
             
              
        } catch (SQLException ex) {
            return false;
        }
        
        
        
        
    }
       
 public static boolean eliminar(Pago p){
        
        try {
            String sql= "delete from pago where id_pago=? ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setInt(1, p.getId_pago());
            
            
            if(ps.executeUpdate()>0){
                ps.close();
                con.close();
                return true;
            }else{
                return false;
            }
             
              
        } catch (SQLException ex) {
            return false;
        }
        
        
        
        
    }
       

  
  
  public static ArrayList<Pago> PagosporCliente(int id_cliente){
        
        try {
            String sql= "select date_format(fecha_pago,'%d-%m-%Y')as fecha,pago_diario,id_pago,id_cliente,saldo_total from pago where id_cliente="+ id_cliente+ " order by fecha_pago";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Pago p ;
            ArrayList<Pago> l=new ArrayList<>();
            
            while(rs.next()){
                
                p= new Pago();
                p.setId_pago(rs.getInt("id_pago"));
                p.setFecha_pago(rs.getString("fecha")); 
                p.setSaldo_total(rs.getDouble("saldo_total"));
                p.setPago_diario(rs.getDouble("pago_diario"));
                p.setId_cliente(rs.getInt("id_cliente"));
               
                l.add(p);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
        
        
        
       
        
  } 
  
  
    public static ArrayList<Pago> listar(String mes, String dia){
        
        try {
            String sql= "select id_cliente,date_format(fecha_pago,'%d-%m-%Y')as fecha_pago,pago_diario from pago where MONTH(FECHA_PAGO)="+mes+" and DAY(FECHA_PAGO) ="+dia+" order by fecha_pago";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Pago p ;
            ArrayList<Pago> l=new ArrayList<>();
            
            while(rs.next()){
                
                p= new Pago();
                
                p.setFecha_pago(rs.getString("fecha_pago")); 
                
                p.setPago_diario(rs.getDouble("pago_diario"));
                p.setId_cliente(rs.getInt("id_cliente"));
                
               
                l.add(p);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
        
        
        
       
        
  } 
    
    public static ArrayList<Pago> listar(String mes){
        
        try {
            String sql= "select date_format(fecha_pago,'%d-%m-%Y')as fecha_pago,sum(pago_diario) as total from pago where MONTH(FECHA_PAGO)="+mes+"  group by fecha_pago order by fecha_pago" ;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Pago p ;
            ArrayList<Pago> l=new ArrayList<>();
            
            while(rs.next()){
                
                p= new Pago();
               
                p.setFecha_pago(rs.getString("fecha_pago")); 
                
                p.setPago_diario(rs.getDouble("total"));
                
               
                l.add(p);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
        
        
        
       
        
  } 
    
    
    
     public static ArrayList<Pago> resumen_mes(String mes){
        
        try {
            String sql= "select sum(pago_diario) as total from pago where MONTH(FECHA_PAGO)="+mes ;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Pago p ;
            ArrayList<Pago> l=new ArrayList<>();
            
            while(rs.next()){
                
                p= new Pago();
               
                p.setPago_diario(rs.getDouble("total"));
                
               
                l.add(p);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
        
        
        
       
        
  } 
     
      public static ArrayList<Pago> resumen_mes_dia(String mes,String dia){
        
        try {
            String sql= "select sum(pago_diario) as total from pago where MONTH(FECHA_PAGO)="+mes+" and DAY(FECHA_PAGO)="+dia ;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Pago p ;
            ArrayList<Pago> l=new ArrayList<>();
            
            while(rs.next()){
                
                p= new Pago();
               
                p.setPago_diario(rs.getDouble("total"));
                
               
                l.add(p);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
        
        
        
       
        
  } 
  
  public static int id_pago(int id_venta){
          try {
            String sql= "select max(id_pago) as id_pago  from pago where id_venta="+ id_venta;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
           
           Pago p=new Pago();
           p.setId_pago(rs.getInt("id_pago"));
              
            
            
            ps.close();
            rs.close();
            con.close();
            return p.getId_pago();
            
              
        } catch (SQLException ex) {
             return 0;
        
        }
  }
        
  public static ArrayList<Pago> MontoCancelado(int id_cliente){
          try {
            String sql= "select sum(pago_diario)as saldo_total from pago where id_cliente="+id_cliente;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Pago p ;
            ArrayList<Pago> l=new ArrayList<>();
            
            while(rs.next()){
                
                p= new Pago();
              
                p.setSaldo_total(rs.getDouble("saldo_total"));
               
               
                l.add(p);
            }
             ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }        
        
       
        
  } 
  
  
  
}
