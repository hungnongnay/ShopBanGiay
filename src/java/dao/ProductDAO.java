/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author LENOVO
 */
public class ProductDAO {

    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> ProductArrayList = new ArrayList<>();
        try {
            String stm1 = "select *from product\n" + "order by Id desc\n";

            con = DBContext.makeConnection();//mo ket noi
            ps = con.prepareStatement(stm1);//nem cau lenh sang sql
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductArrayList.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),rs.getString(4)));
            }

        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error: " + e);
        }

        return ProductArrayList;
    }

    
    //create 1000 book ben test packages
//    public void create(String Name, String Address, String Email) {
//        try {
//            String createQuery = "INSERT INTO Worker\n" + "VALUES (?,?,?);";
//            con = WorkerDB.makeConnection();//mo ket noi
//            ps = con.prepareStatement(createQuery);//nem cau lenh sang sql
//            ps.setString(1, Name);
//            ps.setString(2, Address);
//            ps.setString(3, Email);
//            ps.executeUpdate();//ko co du lieu tra ve; khi nao cos du lieu tra ve thi dung rs
//        } catch (Exception e) {
//            System.out.println("Error: " + e);
//        }
//    }
//    
    public int lastPages(){
        int lastPages = 0;
        try {
            String createQuery = "select count(*) from product";
            con = DBContext.makeConnection();//mo ket noi
            ps = con.prepareStatement(createQuery);//nem cau lenh sang sql
            rs = ps.executeQuery();
            
            while (rs.next()) {
                int total = rs.getInt(1);
                lastPages = total/6;
                
                if(total%6 != 0){
                    lastPages++;
                }
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return lastPages;
    }
    
    public Product getLastProduct(){
        try {
            String createQuery = "select top 1 *from product\n" + "order by Id desc";
            con = DBContext.makeConnection();//mo ket noi
            ps = con.prepareStatement(createQuery);//nem cau lenh sang sql
            rs = ps.executeQuery();
            
            while (rs.next()) {
                return new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4),rs.getString(4));
            }
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        return null;
    }

}
