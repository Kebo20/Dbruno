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
import modelo.Compra;

/**
 *
 * @author kevin
 */
public class CompraDao {
    public static boolean insertar(Compra co){
        
        try {
            String sql= "insert into compra (fecha_compra,num_guia,num_pollos,descripcion,precio_kilo,can_kilo,total_compra) values (?,?,?,?,?,?,?)";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setString(1, co.getFecha_compra());
            ps.setString(2, co.getNum_guia());
            ps.setInt(3, co.getNum_pollos());
            ps.setString(4, co.getDescripcion());
            ps.setDouble(5, co.getPrecio_kilo());
            ps.setDouble(6, co.getCan_kilo());
            ps.setDouble(7, co.getTotal_compra());
            
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
        
        
public static boolean actualizar(Compra co){
        
        try {
            String sql= "update cliente set fecha_compra=?, num_guia=?, num_pollos=?, descripcion=?, precio_kilo=?, can_kilo=?, total_compra=? where id_compra=? ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setString(1, co.getFecha_compra());
            ps.setString(2, co.getNum_guia());
            ps.setInt(3, co.getNum_pollos());
            ps.setString(4, co.getDescripcion());
            ps.setDouble(5, co.getPrecio_kilo());
            ps.setDouble(6, co.getCan_kilo());
            ps.setDouble(7, co.getTotal_compra());
            
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
       
 public static boolean eliminar(Compra co){
        
        try {
            String sql= "delete from compra where id_compra=? ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setInt(1, co.getId_compra());
            
            
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
       
  public static ArrayList<Compra> listar(){
        
        try {
            String sql= "select id_compra,date_format(fecha_compra,'%d-%m-%Y')as fecha,num_guia,num_pollos,descripcion,precio_kilo,can_kilo,total_compra from compra";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Compra co ;
            ArrayList<Compra> l=new ArrayList<>();
            
            while(rs.next()){
                
                co= new Compra();
                co.setId_compra(rs.getInt("id_compra"));
                co.setFecha_compra(rs.getString("fecha"));
                co.setNum_guia(rs.getString("num_guia"));
                co.setNum_pollos(rs.getInt("num_pollos"));
                co.setDescripcion(rs.getString("descripcion"));
                co.setPrecio_kilo(rs.getDouble("precio_kilo"));
                co.setCan_kilo(rs.getDouble("can_kilo"));
                co.setTotal_compra(rs.getDouble("total_compra"));
                l.add(co);
            }
            
            rs.close();
            ps.close();
            con.close();
            
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }  
  
    
 public static ArrayList<Compra> listar(String mes){
        
        try {
            String sql= "select  date_format(fecha_compra,'%d-%m-%Y')as fecha,sum(total_compra) as total from compra where MONTH(FECHA_COMPRA)= "+mes+" and YEAR(FECHA_COMPRA)=2020  group by fecha_compra order by fecha_compra";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Compra co ;
            ArrayList<Compra> l=new ArrayList<>();
            
            while(rs.next()){
                
                co= new Compra();
                
                co.setFecha_compra(rs.getString("fecha"));
               
                co.setTotal_compra(rs.getDouble("total"));
                l.add(co);
            }
            
            rs.close();
            ps.close();
            con.close();
            
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }  
  public static ArrayList<Compra> listar(String mes,String descripcion){
        
        try {
            String sql= "select  date_format(fecha_compra,'%d-%m-%Y')as fecha,sum(total_compra) as total from compra where MONTH(FECHA_COMPRA)= "+mes+" and YEAR(FECHA_COMPRA)=2020 and descripcion='"+descripcion+"'  group by fecha_compra order by fecha_compra";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Compra co ;
            ArrayList<Compra> l=new ArrayList<>();
            
            while(rs.next()){
                
                co= new Compra();
                
                co.setFecha_compra(rs.getString("fecha"));
               
                co.setTotal_compra(rs.getDouble("total"));
                l.add(co);
            }
            
            rs.close();
            ps.close();
            con.close();
            
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }  
 

  
  public static ArrayList<Compra> listar(String mes,String dia,String descripcion){
        
        try {
            String sql= "select id_compra,date_format(fecha_compra,'%d-%m-%Y')as fecha,num_guia,num_pollos,descripcion,precio_kilo,can_kilo,total_compra from compra where MONTH(FECHA_COMPRA)= "+mes+" and DAY(FECHA_COMPRA)= "+dia+" AND YEAR(FECHA_COMPRA)=2020 and descripcion='"+descripcion+"' order by fecha_compra";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Compra co ;
            ArrayList<Compra> l=new ArrayList<>();
            
            while(rs.next()){
                
                co= new Compra();
                co.setId_compra(rs.getInt("id_compra"));
                co.setFecha_compra(rs.getString("fecha"));
                co.setNum_guia(rs.getString("num_guia"));
                co.setNum_pollos(rs.getInt("num_pollos"));
                co.setDescripcion(rs.getString("descripcion"));
                co.setPrecio_kilo(rs.getDouble("precio_kilo"));
                co.setCan_kilo(rs.getDouble("can_kilo"));
                co.setTotal_compra(rs.getDouble("total_compra"));
                l.add(co);
            }
            
            rs.close();
            ps.close();
            con.close();
            
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }  
  
    public static boolean Compras_dia_tipo(String mes,String dia,String descripcion){
        
        try {
            String sql= "select date_format(fecha_compra,'%d-%m-%Y')as fecha,num_guia,num_pollos,descripcion,precio_kilo,can_kilo,total_compra from compra where MONTH(FECHA_COMPRA)= "+mes+" and DAY(FECHA_COMPRA)= "+dia+" AND YEAR(FECHA_COMPRA)=2020 and descripcion='"+descripcion+"'";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            
            
            
            if(rs.next()){
              rs.close();
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

  
  
   
  public static ArrayList<Compra> resumen_mes(String mes){
        
        try {
            String sql= "SELECT sum(num_pollos) as suma_pollos,avg(precio_kilo)as precio,sum(can_kilo)as kilos,sum(total_compra) as total FROM compra where MONTH(FECHA_COMPRA)= "+mes+" and YEAR(FECHA_COMPRA)=2020";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Compra co ;
            ArrayList<Compra> l=new ArrayList<>();
            
            while(rs.next()){
                
                co= new Compra();
                
                co.setNum_pollos(rs.getInt("suma_pollos"));
               
                co.setPrecio_kilo(rs.getDouble("precio"));
                co.setCan_kilo(rs.getDouble("kilos"));
                co.setTotal_compra(rs.getDouble("total"));
                l.add(co);
            }
            
            rs.close();
            ps.close();
            con.close();
            
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  }

  
 
  public static ArrayList<Compra> resumen_mes_descripcion(String mes,String desc){
        
        try {
            String sql= "SELECT sum(num_pollos) as suma_pollos,avg(precio_kilo)as precio,sum(can_kilo)as kilos,sum(total_compra) as total FROM compra where  MONTH(FECHA_COMPRA)="+ mes+ " and descripcion='"+desc+"' ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Compra co ;
            ArrayList<Compra> l=new ArrayList<>();
            
            while(rs.next()){
                
                co= new Compra();
                
                co.setNum_pollos(rs.getInt("suma_pollos"));
               
                co.setPrecio_kilo(rs.getDouble("precio"));
                co.setCan_kilo(rs.getDouble("kilos"));
                co.setTotal_compra(rs.getDouble("total"));
                l.add(co);
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
