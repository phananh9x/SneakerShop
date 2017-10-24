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

    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();
        for (Product p : dao.getListProductByCategoryID("adidas")) {
            System.out.println(p.getProductName() + " - " + p.getProductPrice());
        }
    }
}
