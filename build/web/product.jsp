<%-- 
    Document   : product
    Created on : Oct 23, 2017, 9:13:54 PM
    Author     : phana
--%>

<%@page import="model.Cart"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>
    </head>
    <body>
         <%
            String category_id = "";
            if (request.getParameter("category") != null) {
                category_id = request.getParameter("category");
            }
            Cart cart =(Cart) session.getAttribute("cart");
            if(cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <!-- offer block end  --> 
            <!-- bredcrumb and page title block start  -->
            <section id="bread-crumb">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-3">
                            <div class="page-title">
                                <h4>Woman</h4>
                            </div>
                        </div>
                        <div class="col-md-9 col-sm-9 col-xs-9">
                            <div class="bread-crumb">
                                <ul>
                                    <li><a href="index.html">home</a></li>
                                    <li>\</li>
                                    <li><a href="grid-view.html">woman</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- bredcrumb and page title block end  -->

            <section id="product-category">
                <div class="container">
                    <div class="row">
                        
                        <div class=""> 
                            <!-- right block Start  -->
                            <section id="right">
                                <div class="category-banner"> <a href="#"><img src="images/product/Category-banner.jpg" alt="#"></a> </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="view">
                                            <div class="grid active "><a href="grid-view.html">
                                                    <div class="grid-icon "></div>
                                                </a> </div>
                                            <div class="list"><a href="list-view.html">
                                                    <div class="list-icon "></div>
                                                </a> </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="shoring pull-right">
                                            <div class="short-by">
                                                <p>Sort By</p>
                                                <div class="select-item">
                                                    <select>
                                                        <option value="" selected="selected">Name (A to Z)</option>
                                                        <option value="">Name(Z - A)</option>
                                                        <option value="">price(low&gt;high)</option>
                                                        <option value="">price(high &gt; low)</option>
                                                        <option value="">rating(highest)</option>
                                                        <option value="">rating(lowest)</option>
                                                    </select>
                                                    <span class="fa fa-angle-down"></span> </div>
                                            </div>
                                            <div class="show-item">
                                                <p>Show</p>
                                                <div class="select-item">
                                                    <select>
                                                        <option value="" selected="selected">24</option>
                                                        <option value="">12</option>
                                                        <option value="">6</option>
                                                    </select>
                                                    <span class="fa fa-angle-down"></span> </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           
                            <div class="product-grid-view">

                                <ul>
                                    <%
                                        DecimalFormat formatter = new DecimalFormat("###,###,###");
                                        for (Product p : ProductDAO.getListProductByCategoryID(category_id)) {
                                    %>
                                    <li>
                                        <div  class="item col-md-3 col-sm-6 col-xs-6">
                                            <div class="product-block ">
                                                <div class="image"> <a href="product-detail.jsp?id=<%= p.getProductID() %>"><img class="img-responsive" title="T-shirt" alt="T-shirt" src="<%=p.getProductImage()%>"></a> </div>
                                                <div class="product-details">
                                                    <div class="product-name">
                                                        <h4><a href="product-detail.jsp?id=<%= p.getProductID() %>"><%=p.getProductName()%></a></h4>
                                                    </div>
                                                    <div class="price"> <span class="price-new"><%=formatter.format(p.getProductPrice())%> VNĐ</span> </div>
                                                    <div class="product-hov">
                                                        <ul>
                                                            <li class="wish"><a href="#"></a></li>
                                                            <li class="addtocart" id="<%= p.getProductID() %>" value="<%= p.getProductPrice()%>"><a href="#" >Add to Cart</a> </li>
                                                            <li class="compare"><a href="#"></a></li>
                                                        </ul>
                                                        <div class="review"> <span class="rate"> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star rated"></i> <i class="fa fa-star"></i> </span> </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                    <%
                                        }
                                    %>
                                </ul>
                            </div>
                        </section>
                        <div class="row">
                            <div class="pagination-bar">
                                <ul>
                                    <li><a href="#"><i class="fa fa-angle-left"></i></a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </div>
                        </div>
                        <!-- right block end  --> 
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
