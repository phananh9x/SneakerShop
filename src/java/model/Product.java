/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author phana
 */
public class Product {
    public long productID;
    public String productName;
    public String productImage;
    public int productPrice;
    public String categoryID;

    public Product(long productID, String productName, String productImage, int productPrice, String categoryID) {
        this.productID = productID;
        this.productName = productName;
        this.productImage = productImage;
        this.productPrice = productPrice;
        this.categoryID = categoryID;
    }

    public Product() {
    }

    public long getProductID() {
        return productID;
    }

    public void setProductID(long productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductImage() {
        return productImage;
    }

    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public int getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public String getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(String categoryID) {
        this.categoryID = categoryID;
    }
    
    
}
