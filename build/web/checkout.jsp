<%-- 
    Document   : checkout
    Created on : Oct 26, 2017, 12:50:31 AM
    Author     : phana
--%>

<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="model.Cart"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            CategoryDAO categoryDAO = new CategoryDAO();
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            Cart cart = (Cart) session.getAttribute("cart");
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <section id="bread-crumb">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3">
                            <div class="page-title">
                                <h4>Giỏ Hàng</h4>
                            </div>
                        </div>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                            <div class="bread-crumb">
                                <ul>
                                    <li><a href="index.jsp">home</a></li>
                                    <li>\</li>
                                    <li><a href="checkout.jsp">Giỏ Hàng</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section id="cart-page-contain">
                <div class="container">
                    <div class="row">
                        <div class="col-md-9 col-xs-12"> 
                            <!-- left block Start  -->
                            <div class="cart-content table-responsive">
                                <table class="cart-table table-responsive" style="width:100%">
                                    <tbody>
                                        <tr class="Cartproduct carttableheader">
                                            <td style="width:15%">Sản Phẩm</td>
                                            <td style="width:45%">Details</td>
                                            <td style="width:10%">Số lượng</td>
                                            <td style="width:5%">Giá</td>
                                            <td style="width:15%">Total</td>
                                            <td class="delete" style="width:10%">&nbsp;</td>
                                        </tr>
                                    <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>

                                    <tr class="Cartproduct">
                                        <td><div class="image"><a href="product-detail.jsp?id=<%=list.getValue().getProduct().getProductID()%>"><img alt="img" style="width: 130px;" src="images/product/<%=list.getValue().getProduct().getProductImage()%>"></a></div></td>
                                        <td><div class="product-name">
                                                <h4><a href="product-detail.jsp?id=<%=list.getValue().getProduct().getProductID()%>"><%=list.getValue().getProduct().getProductName()%></a></h4>
                                            </div>
                                        <td class="product-quantity"><div class="quantity">
                                                <input type="number" size="4" class="input-text qty text" title="Qty" value="<%=list.getValue().getQuantity()%>" name="cart" min="0" step="1">
                                            </div></td>
                                        <td><%=formatter.format(list.getValue().getProduct().getProductPrice())%></td>
                                        <td class="price"><%=formatter.format(list.getValue().getQuantity() * list.getValue().getProduct().getProductPrice())%></td>
                                        <td class="delete"><a title="Delete"> <i class="glyphicon glyphicon-trash " value="<%=list.getValue().getProduct().getProductID()%>"></i></a></td>
                                    </tr>
                                    <%}%>

                                </tbody>
                            </table>
                        </div>
                        <div class="cart-bottom">
                            <div class="box-footer">
                                <div class="pull-left"><a class="btn btn-default" href="index.jsp"> <i class="fa fa-arrow-left"></i> &nbsp; Continue shopping </a></div>
                                <div class="pull-right">
                                    <button class="btn btn-default" type="submit"><i class="fa fa-undo"></i> &nbsp; Update cart</button>
                                </div>
                            </div>
                        </div>
                        <!-- left block end  --> 
                    </div>
                    <div class="col-md-3 col-xs-12"> 
                        <!-- right block Start  -->
                        <section id="right">
                            <div class="sidebar-block">
                                <div class="sidebar-widget">
                                    <div class="sidebar-title">
                                        <h4>Cart Summary</h4>
                                    </div>
                                    <div id="order-detail-content" class="title-toggle table-block">
                                        <div class="carttable">
                                            <table class="table" id="cart-summary">
                                                <tbody>
                                                    
                                                    <tr>
                                                        <td> Tổng Tiền :</td>
                                                        <td id="total-price"><%=formatter.format(cart.total())%> VNĐ</td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2"><div class="input-append couponForm">
                                                                <input type="text" placeholder="Gift or Coupon code" id="appendedInputButton">
                                                                <button type="button" class="col-lg-4 btn btn-success">Thanh Toán!</button>
                                                            </div></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="checkout"> <a href="checkout.html" title="checkout" class="btn btn-default ">Proceed to checkout</a> </div>
                            </div>
                        </section>
                        <!-- left block end  --> 
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
