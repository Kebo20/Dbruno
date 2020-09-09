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
import modelo.Venta;

/**
 *
 * @author kevin
 */
public class VentaDao {
    
    
    public static boolean insertar(Venta v){
         
        try {
            String sql= "insert into venta (fecha_venta,num_pollos,descripcion,precio_kilo,can_kilo,total_venta,id_cliente) values (?,?,?,?,?,?,?)";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setString(1,v.getFecha_venta());
            ps.setInt(2, v.getNum_pollos());
            ps.setString(3, v.getDescripcion());
            ps.setDouble(4, v.getPrecio_kilo());
            ps.setDouble(5, v.getCan_kilo());
            ps.setDouble(6, v.getTotal_venta());
            ps.setInt(7, v.getId_cliente());
            
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
    
   public static boolean insertar2(Venta v){
         
        try {
            String sql= "insert into venta (fecha_venta,num_pollos,descripcion,precio_kilo,can_kilo,total_venta,id_cliente,tipo) values (sysdate(),0.0,'',0.0,0,?,?,'anteriores')";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setDouble(1, v.getTotal_venta());
            ps.setInt(2, v.getId_cliente());
            
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
        
        
public static boolean actualizar(Venta v){
        
        try {
            String sql= "update venta set  fecha_venta=?; num_pollos=?, descripcion=?, precio_kilo=?, can_kilo=?, total_venta=? where id_cliente=?";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setString(1, v.getFecha_venta());
            ps.setInt(2, v.getNum_pollos());
            ps.setString(3, v.getDescripcion());
            ps.setDouble(4, v.getPrecio_kilo());
            ps.setDouble(5, v.getCan_kilo());
            ps.setDouble(6, v.getTotal_venta());
            
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
       
 public static boolean eliminar(Venta v){
        
        try {
            String sql= "delete from venta where id_venta=? ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setInt(1, v.getId_venta());
            
            
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
 
  public static boolean eliminar2(Venta v){
        
        try {
            String sql= "delete from venta where id_venta=? and tipo='anteriores' ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setInt(1, v.getId_venta());
            
            
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
       
  public static ArrayList<Venta> listar(){
        
        try {
            String sql= "select venta.id_venta,date_format(venta.fecha_venta,'%d-%m-%Y')as fecha,venta.num_pollos,venta.descripcion,venta.precio_kilo,venta.can_kilo,venta.total_venta,cliente.nombre from venta inner join cliente on cliente.id_cliente=venta.id_cliente where venta.tipo is null  order by venta.fecha_venta desc";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
                v.setId_venta(rs.getInt("id_venta"));
                v.setFecha_venta(rs.getString("fecha"));
                v.setNum_pollos(rs.getInt("num_pollos"));
                v.setDescripcion(rs.getString("descripcion"));
                v.setPrecio_kilo(rs.getDouble("precio_kilo"));
                v.setCan_kilo(rs.getDouble("can_kilo"));
                v.setTotal_venta(rs.getDouble("total_venta"));
                v.setCliente_nombre(rs.getString("nombre"));
                l.add(v);
            }
            
            ps.close();
            rs.close();
             con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
  }   
  
  public static ArrayList<Venta> listar2(){
        
        try {
            String sql= "select id_venta,date_format(fecha_venta,'%d-%m-%Y')as fecha,total_venta,id_cliente from venta where tipo='anteriores' order by fecha_venta";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
                v.setId_venta(rs.getInt("id_venta"));
                v.setFecha_venta(rs.getString("fecha"));
                v.setTotal_venta(rs.getDouble("total_venta"));
                v.setId_cliente(rs.getInt("id_cliente"));
                l.add(v);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
  }   
    
  public static ArrayList<Venta> listar(String mes){
        
        try {
            String sql= "select date_format(fecha_venta,'%d-%m-%Y')as fecha,sum(total_venta) as total from venta where tipo is null and MONTH(FECHA_VENTA)="+mes+" and YEAR(FECHA_VENTA)=2020  group by fecha_venta  order by fecha_venta";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
               
                v.setFecha_venta(rs.getString("fecha"));
               
                v.setTotal_venta(rs.getDouble("total"));
                
                l.add(v);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
  } 

public static ArrayList<Venta> listar(String mes,String descripcion){
        
        try {
            String sql= "select date_format(fecha_venta,'%d-%m-%Y')as fecha,sum(total_venta) as total from venta where tipo is null and MONTH(FECHA_VENTA)="+mes+" and YEAR(FECHA_VENTA)=2020 and descripcion= '"+ descripcion+"'  group by fecha_venta order by fecha_venta";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
                
                v.setFecha_venta(rs.getString("fecha"));
                
                v.setTotal_venta(rs.getDouble("total"));
                
                l.add(v);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
  } 
  

public static ArrayList<Venta> listar(String mes,String dia,String descripcion){
        
        try {
            String sql= "select descripcion,num_pollos,precio_kilo,can_kilo,id_cliente,date_format(fecha_venta,'%d-%m-%Y')as fecha,total_venta from venta where tipo is null and DAY(FECHA_VENTA)="+dia+" and MONTH(FECHA_VENTA)="+mes+" and YEAR(FECHA_VENTA)=2020 and descripcion= '"+ descripcion+"' order by fecha_venta ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
                
                
                 
                v.setFecha_venta(rs.getString("fecha"));
                v.setNum_pollos(rs.getInt("num_pollos"));
                v.setDescripcion(rs.getString("descripcion"));
                v.setPrecio_kilo(rs.getDouble("precio_kilo"));
                v.setCan_kilo(rs.getDouble("can_kilo"));
               
                v.setId_cliente(rs.getInt("id_cliente"));
                v.setTotal_venta(rs.getDouble("total_venta"));
                
                l.add(v);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
  } 


  public static boolean Ventas_dia_tipo(String mes,String dia,String descripcion){
        
        try {
            String sql= "select descripcion,num_pollos,precio_kilo,can_kilo,id_cliente,date_format(fecha_venta,'%d-%m-%Y')as fecha,total_venta from venta where tipo is null and DAY(FECHA_VENTA)="+dia+" and MONTH(FECHA_VENTA)="+mes+" and YEAR(FECHA_VENTA)=2020 and descripcion= '"+ descripcion+"' ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            
            if (rs.next()) {
                ps.close();
                rs.close();
                con.close();
                return true;
                 
            }else{
                return false;
            }
            
           
           
            
            
              
        } catch (SQLException ex) {
             return false;
        }

        
  } 
  
 public static ArrayList<Venta> total_venta(int id_venta){
        
        try {
            String sql= "select * from venta where tipo is null and   id_venta="+id_venta;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
                v.setId_venta(rs.getInt("id_venta"));
                v.setFecha_venta(rs.getString("fecha_venta"));
                v.setNum_pollos(rs.getInt("num_pollos"));
                v.setDescripcion(rs.getString("descripcion"));
                v.setPrecio_kilo(rs.getDouble("precio_kilo"));
                v.setCan_kilo(rs.getDouble("can_kilo"));
                v.setTotal_venta(rs.getDouble("total_venta"));
                v.setId_cliente(rs.getInt("id_cliente"));
                l.add(v);
            }
            
            ps.close();
            rs.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
  }   
  
   public static ArrayList<Venta> total_cliente(int id_cliente){
        
        
            
             try {
                    String sql= "SELECT sum(total_venta) as total from venta where   id_cliente="+id_cliente;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
              
                v.setTotal_venta(rs.getDouble("total"));
                
                l.add(v);
            }
             rs.close();
            ps.close();
            con.close();
           
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
          
  }   
  
    public static ArrayList<Venta> ventas_cliente(int id_cliente){
        
        
            
             try {
                    String sql= "SELECT id_venta,date_format(fecha_venta,'%d-%m-%Y')as fecha,num_pollos,descripcion,precio_kilo,can_kilo,total_venta,id_cliente  from venta where tipo is null and id_cliente="+id_cliente;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
                v.setId_venta(rs.getInt("id_venta"));
                v.setFecha_venta(rs.getString("fecha"));
                v.setNum_pollos(rs.getInt("num_pollos"));
                v.setDescripcion(rs.getString("descripcion"));
                v.setPrecio_kilo(rs.getDouble("precio_kilo"));
                v.setCan_kilo(rs.getDouble("can_kilo"));
                v.setTotal_venta(rs.getDouble("total_venta"));
                v.setId_cliente(rs.getInt("id_cliente"));
                
                l.add(v);
            }
             rs.close();
            ps.close();
            con.close();
           
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
    }
   
   
   public static ArrayList<Venta> resumen_mes(String mes){
        
        try {
            String sql= "SELECT sum(num_pollos) as suma_pollos,avg(precio_kilo)as precio,sum(can_kilo)as kilos,sum(total_venta) as total FROM venta where tipo is null and  MONTH(FECHA_VENTA)="+mes+" AND YEAR(FECHA_VENTA)=2020";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
                
                v.setNum_pollos(rs.getInt("suma_pollos"));
               
                v.setPrecio_kilo(rs.getDouble("precio"));
                v.setCan_kilo(rs.getDouble("kilos"));
                v.setTotal_venta(rs.getDouble("total"));
                
                l.add(v);
            }
                        rs.close();

            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
  }   
  
    public static ArrayList<Venta> resumen(int mes){
        
        try {
            String sql= "SELECT sum(num_pollos) as suma_pollos,avg(precio_kilo)as precio,sum(can_kilo)as kilos,sum(total_venta) as total FROM venta where tipo is null and  MONTH(FECHA_VENTA)="+mes+" order by fecha_venta";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
                
                v.setNum_pollos(rs.getInt("suma_pollos"));
               
                v.setPrecio_kilo(rs.getDouble("precio"));
                v.setCan_kilo(rs.getDouble("kilos"));
                v.setTotal_venta(rs.getDouble("total"));
                
                l.add(v);
            }
                        rs.close();

            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
  }  
    
    
     public static ArrayList<Venta> resumen_mes_descripcion(String mes, String descripcion){
        
        try {
            String sql= "SELECT sum(num_pollos) as suma_pollos,avg(precio_kilo)as precio,sum(can_kilo)as kilos,sum(total_venta) as total FROM venta where tipo is null and   MONTH(FECHA_VENTA)="+mes+" and (descripcion='"+descripcion+"') order by fecha_venta";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Venta v;
            ArrayList<Venta> l=new ArrayList<>();
            
            while(rs.next()){
                
                v= new Venta();
                
                v.setNum_pollos(rs.getInt("suma_pollos"));
               
                v.setPrecio_kilo(rs.getDouble("precio"));
                v.setCan_kilo(rs.getDouble("kilos"));
                v.setTotal_venta(rs.getDouble("total"));
                
                l.add(v);
            }
                        rs.close();

            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }

        
  }
    
    
}
