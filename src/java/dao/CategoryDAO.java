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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Category;
import model.Product;

/**
 *
 * @author phana
 */
public class CategoryDAO {

    public static ArrayList<Category> getListCategory() {
        Connection cons = DBconnect.getConnection();
        String sql = "SELECT * FROM danhmuc";
        ArrayList<Category> list = new ArrayList<>();
        try {
            PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Category category = new Category();
                category.setCategoryID(rs.getString("id_danhmuc"));
                category.setCategoryName(rs.getString("ten_danhmuc"));
                list.add(category);
            }
            cons.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public Category getCategoryById(String categoryId) {
        Connection cons = DBconnect.getConnection();
        String sql = "SELECT * FROM danhmuc where id_danhmuc='" + categoryId + "'";
        Category category = new Category();

        try {
            PreparedStatement ps = (PreparedStatement) cons.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                category.setCategoryID(rs.getString("id_danhmuc"));
                category.setCategoryName(rs.getString("ten_danhmuc"));
            }
            cons.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return category;
    }

     public boolean insertCategory(Category c) {
        Connection connection = DBconnect.getConnection();
        String sql = "INSERT INTO danhmuc VALUES (?,?,?)";
        try {
            java.sql.PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, new java.util.Date().getTime());
            ps.setString(2, c.getCategoryID());
            ps.setString(3, c.getCategoryName());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(UsersDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public static void main(String[] args) {
        CategoryDAO dao = new CategoryDAO();
        for (Category ds : dao.getListCategory()) {
            System.out.println(ds.getCategoryID());
        }
    }
}
