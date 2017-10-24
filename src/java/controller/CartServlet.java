/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author phana
 */
public class CartServlet extends HttpServlet {

    private final ProductDAO productDAO = new ProductDAO();

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String productID = request.getParameter("id");
        Cart cart = (Cart) session.getAttribute("cart");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            Long idProduct = Long.parseLong(productID);
            Product product = productDAO.getProduct(idProduct);
            switch (command) {
                case "plus":
                    if (cart.getCartItems().containsKey(idProduct)) {
                        cart.insertToCart(idProduct, new Item(product, cart.getCartItems().get(idProduct).getQuantity()));
                        try {
                            /* TODO output your response here.*/
                            out.println("[{\"quantity\":\"" + cart.getCartItems().get(idProduct).getQuantity() + "\",\"total\":\"" + cart.getCartItems().get(idProduct).getQuantity() * cart.getCartItems().get(idProduct).getProduct().getProductPrice() + "\",\"id\":\"" + product.getProductID() + "\",\"name\":\"" + product.getProductName() + "\",\"price\":\"" + product.getProductPrice() + "\",\"image\":\"" + product.getProductImage() + "\",\"totalPrice\":\"" + cart.total() + "\",\"size\":\"" + cart.countItem() + "\"}]");
                        } finally {
                            out.close();
                        }
                    } else {
                        cart.insertToCart(idProduct, new Item(product, 1));
                        try {
                            /* TODO output your response here.*/
                            out.println("[{\"id\":\"" + product.getProductID() + "\",\"name\":\"" + product.getProductName() + "\",\"price\":\"" + product.getProductPrice() + "\",\"image\":\"" + product.getProductImage() + "\",\"totalPrice\":\"" + cart.total() + "\",\"size\":\"" + cart.countItem() + "\"}]");
                        } finally {
                            out.close();
                        }
                    }
                    break;
                case "remove":
                    cart.removeToCart(idProduct);
                    break;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        session.setAttribute("cart", cart);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
