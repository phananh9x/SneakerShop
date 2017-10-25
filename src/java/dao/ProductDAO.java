/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import com.mysql.jdbc.PreparedStatement;
import connect.DBconnect;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Product;

/**
 *
 * @author phana
 */
public class ProductDAO {

    public static ArrayList<Product> getListProductByCategoryID(String categoryId) throws SQLException {
        Connection cons = DBconnect.getConnection();
        String sql = "SELECT * FROM SANPHAM WHERE id_danhmuc ='" + categoryId + "'";
        ArrayList<Product> list = new ArrayList<>();
        PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            Product pr = new Product();
            pr.setCategoryID(rs.getString("id_danhmuc"));
            pr.setProductID(rs.getInt("id"));
            pr.setProductName(rs.getString("ten"));
            pr.setProductImage(rs.getString("hinh"));
            pr.setProductPrice(rs.getInt("gia"));
            list.add(pr);
        }
        return list;
    }
    public Product getProduct(long productID) throws SQLException {
        Connection connection = DBconnect.getConnection();
        String sql = "SELECT * FROM SANPHAM WHERE id = '" + productID + "'";
        PreparedStatement ps = (PreparedStatement) connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) {
            product.setProductID(rs.getLong("id"));
            product.setProductName(rs.getString("ten"));
            product.setProductImage(rs.getString("hinh"));
            product.setProductPrice(rs.getInt("gia"));
            product.setCategoryID(rs.getString("id_danhmuc"));
        }
        return product;
    }
    
     // lấy danh sách sản phẩm
    public ArrayList<Product> getListProductByNav(String categoryID, int firstResult, int maxResult) throws SQLException{
        Connection connection = DBconnect.getConnection();
        String sql = "SELECT * FROM sanpham WHERE id_danhmuc = '" + categoryID + "' limit ?,?";
        PreparedStatement ps = (PreparedStatement) connection.prepareCall(sql);
        ps.setInt(1, firstResult);
        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("id"));
            product.setProductName(rs.getString("ten"));
            product.setProductImage(rs.getString("hinh"));
            product.setProductPrice(rs.getInt("gia"));
            product.setCategoryID(rs.getString("id_danhmuc"));
            list.add(product);
        }
        return list;
    }
    // tính tổng sản phẩm
    public int countProductByCategory(String categoryID) throws SQLException{
        Connection connection = DBconnect.getConnection();
        String sql = "SELECT count(id) FROM sanpham WHERE id_danhmuc = '" + categoryID + "'";
        PreparedStatement ps = (PreparedStatement) connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) {
            count = rs.getInt(1);
        }
        return count;  
    }
    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
        for (Product p : dao.getListProductByCategoryID("adidas")) {
            System.out.println(p.getProductName() + " - " + p.getProductPrice());
        }
    }
}
