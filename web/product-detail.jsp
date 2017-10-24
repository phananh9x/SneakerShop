<%-- 
    Document   : product-detail
    Created on : Oct 23, 2017, 9:48:24 PM
    Author     : phana
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            DecimalFormat formatter = new DecimalFormat("###,###,###");

            ProductDAO productDao = new ProductDAO();
            Product p = new Product();
            long productId;
            if (request.getParameter("id") != null) {
                productId = Long.parseLong(request.getParameter("id"));
                p = productDao.getProduct(productId);
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

                            <div class="product-details"><!--product-details-->
                                <div class="col-sm-5">
                                    <div class="view-product">
                                        <img src="<%=p.productImage%>" alt="">
                                    <h3>ZOOM</h3>
                                </div>


                            </div>
                            <div class="col-sm-7">
                                <div class="product-information"><!--/product-information-->
                                    <img src="images/product-details/new.jpg" class="newarrival" alt="">
                                    <h2><%=p.getProductName()%></h2>
                                    <p>Mã Sản Phẩm: <%=p.getProductID()%></p>
                                    <img src="images/product-details/rating.png" alt="">
                                    <span><label>Giá:</label> <%=formatter.format(p.getProductPrice())%> VNĐ</span>
                                    <br>
                                    <div class="form-group" >
                                        <label for="sel1" style="width: 100px;">Size:</label>
                                        <select class="form-control" id="sel1" style="width: 100px; display: inline-block;">
                                            <option>28</option>
                                            <option>29</option>
                                            <option>30</option>
                                            <option>31</option>
                                            <option>32</option>
                                            <option>33</option>
                                            <option>34</option>
                                        </select>
                                    </div>
                                    <label style="width: 100px;">Số lượng: </label>
                                    <input type="text" value="3" style="width: 100px;">
                                    <button type="button" class="btn btn-fefault cart">
                                        <a href="CartServlet?command=plus&id=<%=p.getProductID()%>"><i class="fa fa-shopping-cart"></i>
                                            Add to cart</a>
                                    </button>
                                    <a href=""><img src="images/product-details/share.png" class="share img-responsive" alt=""></a>
                                </div><!--/product-information-->
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
