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

import modelo.Cliente;

/**
 *
 * @author kevin
 */
public class ClienteDao {
    
public static boolean insertar(Cliente c){
        
        try {
            String sql= "insert into cliente (cod_dni,nombre,celular,correo,direccion,descripcion) values (?,?,?,?,?,?)";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ps.setString(1, c.getCod_dni());
            ps.setString(2, c.getNombre());
            ps.setString(3, c.getCelular());
            ps.setString(4, c.getCorreo());
            ps.setString(5, c.getDireccion());
            ps.setString(6, c.getDescripcion());
            
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
        
        
public static boolean actualizar(Cliente c){
        
        try {
            String sql= "update cliente set   nombre=? , celular=? , correo=? , direccion=? , descripcion=?, cod_dni=? where id_cliente=? ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setString(1, c.getNombre());
            ps.setString(2, c.getCelular());
            ps.setString(3, c.getCorreo());
            ps.setString(4, c.getDireccion());
            ps.setString(5, c.getDescripcion());
            ps.setString(6, c.getCod_dni());
            ps.setInt(7, c.getId_cliente() );
            
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
       
 public static boolean eliminar(Cliente c){
        
        try {
            String sql= "delete from cliente where id_cliente=? ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
           
            ps.setInt(1, c.getId_cliente());
            
            
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
       
  public static ArrayList<Cliente> listar(){
        
        try {
            String sql= "select * from cliente order by nombre ";
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Cliente c ;
            ArrayList<Cliente> l=new ArrayList<>();
            
            while(rs.next()){
                
                c= new Cliente();
                c.setId_cliente(rs.getInt("id_cliente"));
                c.setCod_dni(rs.getString("cod_dni")); 
                c.setNombre(rs.getString("nombre"));
                c.setCelular(rs.getString("celular"));
                c.setCorreo(rs.getString("correo"));
                c.setDescripcion(rs.getString("descripcion"));
                c.setDireccion(rs.getString("direccion"));
                l.add(c);
            }
            
            rs.close();
            ps.close();
            con.close();
            return l;
            
              
        } catch (SQLException ex) {
             return null;
        }
  
  }   
  
  public static String cliente(int id_cliente){
        
        try {
            String sql= "select * from cliente where id_cliente= "+id_cliente;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
           
           if (rs.next()) {
                String nombre=rs.getString("nombre");
                String descripcion=rs.getString("descripcion");
                rs.close();
               ps.close();
               con.close();
                 return nombre+ " ("+descripcion +")";
                
            }
               rs.close();
               ps.close();
               con.close();
                return "--";
           
                
               
            
        } catch (SQLException ex) {
            
            return"--";
            
          
              
        } 
  }
        
        
        public static ArrayList<Cliente> getCliente(int id_cliente){
        
        try {
            String sql= "select * from cliente where id_cliente= "+id_cliente;
            
            Connection con = Conexion.getConexion();
            PreparedStatement ps= con.prepareStatement(sql);
            
            ResultSet rs= ps.executeQuery();
            Cliente c;
            ArrayList<Cliente> l = new ArrayList<>();
            
           if (rs.next()) {
                 
               c=new Cliente();
               c.setId_cliente(rs.getInt("id_cliente"));
               c.setCod_dni(rs.getString("cod_dni"));
               c.setNombre(rs.getString("nombre"));
               c.setCelular(rs.getString("celular"));
               c.setCorreo(rs.getString("correo"));
               c.setDireccion(rs.getString("direccion"));
               c.setDescripcion(rs.getString("descripcion"));
               l.add(c);
                
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
