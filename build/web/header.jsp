<%-- 
    Document   : header
    Created on : Oct 22, 2017, 2:59:53 PM
    Author     : phana
--%>

<%@page import="model.Users"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Cart"%>
<%@page import="java.util.Map"%>
<%@page import="model.Item"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.Category"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <!-- Favicone Icon -->
        <link href="Bootstrap/css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet" type="text/css">
        <link href="css/font-awesome.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Poppins:300,500,600,700' rel='stylesheet' type='text/css'>
        <link href="css/owl.carousel.css" rel="stylesheet" type="text/css">
        <link href="css/main.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <%
            CategoryDAO categoryDAO = new CategoryDAO();
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }

        %>
        <div class="header">
            <div class="header-top">
                <div class="container">
                    <div class="call pull-left">
                        <p>Call us toll free : <span>+1324 353 4689</span></p>
                    </div>
                    <div class="user-info pull-right">
                        <div class="user">
                            <ul>
                                <%if (users != null) {%>
                                <li><a href="#"><%=users.getUserEmail()%></a></li> 
                                <li><a href="admin/index.jsp">Admin Manager</a></li> 
                                <li><a href="UsersServlet?command=logout">Log Out</a></li> 
                                <%}else {%>
                                <li><a href="#" data-toggle="modal" data-target="#login">Login</a> 
                                    <!-- Modal -->
                                    <div class="modal fade" id="login" role="dialog">
                                        <div class="modal-dialog"> 
                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="panel-heading">
                                                        <div class="panel-title pull-left">Login</div>
                                                        <div class="pull-right"><a href="#">Forgot password?</a>
                                                            <button aria-hidden="true" data-dismiss="modal" class="close btn btn-xs " type="button"> <i class="fa fa-times"></i> </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-body">
                                                    <form id="loginform" class="form-horizontal" action="UsersServlet" method="POST">
                                                        <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                                            <input id="username" type="text" class="form-control" name="username" value="" placeholder="username or email">


                                                        </div>
                                                        <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                                            <input id="password" type="password" class="form-control" name="password" placeholder="password">
                                                        </div>
                                                        <div class="input-group">
                                                            <div class="checkbox">
                                                                <label>
                                                                    <input id="login-remember" type="checkbox" name="remember" value="1">
                                                                    Remember me</label>
                                                            </div>
                                                        </div>
                                                        <div class="form-group"> 
                                                            <!-- Button -->
                                                            <div class="col-sm-12 controls"> 
                                                                <input type="hidden" name="command" value="login">
                                                                <button class="btn btn-primary btn-success">login</button>
                                                            </div>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <div class="form-group">
                                                        <div class="col-md-12 control">
                                                            <div>Don't have an account! <a href="#">Sign Up Here</a></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li><a href="#" data-toggle="modal" data-target="#register">Register</a>
                                    <div class="modal fade" id="register" role="dialog">
                                        <div class="modal-dialog"> 
                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="panel-heading">
                                                        <div class="panel-title pull-left">Register</div>
                                                        <div class="pull-right">
                                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button"><i class="fa fa-times"></i> </button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <form method="POST" action="UsersServlet">
                                                    <div class="modal-body">
                                                        <div class="control-group"> 
                                                            <!-- Username -->
                                                            <label class="control-label"  for="username">Username</label>
                                                            <div class="controls">
                                                                <input type="text" id="username" name="username" placeholder="" class="input-xlarge"><span id="user-result"></span>
                                                            </div>
                                                        </div>
                                                        <div class="control-group"> 
                                                            <!-- Password-->
                                                            <label class="control-label" for="password">Password</label>
                                                            <div class="controls">
                                                                <input type="password" id="password" name="password" placeholder="" class="input-xlarge">
                                                            </div>
                                                        </div>
                                                        <div class="control-group"> 
                                                            <!-- Button -->
                                                            <div class="controls">
                                                                <input type="hidden" name="command" value="insert">
                                                                <button class="btn btn-success">Register</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <%}%>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-mid">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 header-left">
                            <div class="logo"> <a href="index.html"><img src="images/logo.png" alt="#"></a> </div>
                        </div>
                        <div class="col-md-6 search_block">
                            <div class="search">
                                <form action="grid-view.html">
                                    <div class="search_cat">
                                        <select class="search-category" name="search-category">
                                            <option class="computer" selected>All Categories</option>
                                            <option class="computer">Men</option>
                                            <option class="computer">Women</option>
                                            <option class="computer">Kids</option>
                                            <option class="computer">Computer</option>
                                            <option class="computer">Electronics</option>
                                        </select>
                                        <span class="fa fa-angle-down"></span> </div>
                                    <input type="text" placeholder="Search...">
                                    <button type="submit" class="btn submit"> <span class="fa fa-search"></span></button>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-3 header-right">
                            <div class="cart">
                                <div class="cart-icon dropdown"></div>
                                <a aria-expanded="false" aria-haspopup="true" role="button" data-toggle="dropdown" class="dropdown-toggle my-cart" href="cart.html"><strong>My Cart( <%=cart.countItem()%> ) </strong> <span class="cart-total" value"<%=cart.total()%>"> <%=formatter.format(cart.total())%> VNĐ</span></a>
                                <ul class="dropdown-menu pull-right cart-dropdown-menu">
                                    <li>
                                        <table class="table table-striped">
                                            <tbody>
                                                <%for (Map.Entry<Long, Item> list : cart.getCartItems().entrySet()) {%>
                                                <tr class="tr-cart <%=list.getValue().getProduct().getProductID()%>">
                                                    <td class="text-center"><a href="product.html"><img class="img-thumbnail" src="<%=list.getValue().getProduct().getProductImage()%>" alt="img"></a></td>
                                                    <td class="text-left"><a href="#"><%=list.getValue().getProduct().getProductName()%></a></td>
                                                    <td class="text-right quality"><%=list.getValue().getQuantity()%> X <%=formatter.format(list.getValue().getProduct().getProductPrice())%></td>
                                                    <td class="text-right price-new"><%=formatter.format(list.getValue().getQuantity() * list.getValue().getProduct().getProductPrice())%></td>
                                                    <td class="text-center"><button type="button" title="Remove" class="btn btn-xs remove" onclick="removeProduct()"><i class="fa fa-times"></i></button></td>
                                                </tr>
                                                <%}%>
                                            </tbody>

                                        </table>
                                    </li>
                                    <li>
                                        <div class="minitotal">
                                            <table class="table pricetotal">
                                                <tbody>
                                                    <tr>
                                                        <td class="text-right"><strong>Total</strong></td>
                                                        <td class="text-right price-new"><%=formatter.format(cart.total())%> VNĐ</td>
                                                    </tr>
                                                </tbody>

                                            </table>
                                            <div class="controls"> <a class="btn btn-primary pull-left" href="cart.html" id="view-cart"><i class="fa fa-shopping-cart"></i> View Cart </a> <a class="btn btn-primary pull-right" href="checkout.html" id="checkout"><i class="fa fa-share"></i> Checkout</a> </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="new-further">
                                <p>New in Further  : </p>
                                <ul class="toggle-newinFurther">
                                    <li><a href="#">Women</a></li>
                                    <li><a href="#">Clothing</a></li>
                                    <li><a href="#">Nightwear</a></li>
                                    <li><a href="#">Panties</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Main menu Start -->
        <section id="main-menu">
            <div class="container">
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <button aria-controls= "navbar" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <a href="#" class="navbar-brand">menu</a> </div>
                    <div class="navbar-collapse collapse" id="navbar">
                        <ul class="nav navbar-nav">
                            <li><a href="index.jsp">TRANG CHỦ</a></li>
                                <%
                                    for (Category c : categoryDAO.getListCategory()) {
                                %>
                            <li><a href="product.jsp?category=<%=c.getCategoryID()%>"><%= c.getCategoryName().toUpperCase()%></a></li>
                                <% }%>
                            <li><a href="about-us.html">LIÊN HỆ</a></li>
                        </ul>
                    </div>

                </nav>
            </div>
        </section>
        <!-- Main menu End --> 
    </body>
</html>
