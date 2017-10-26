<%-- 
    Document   : aside
    Created on : Oct 25, 2017, 5:28:26 PM
    Author     : phana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
            <a class="navbar-brand" href="index.html">Start Bootstrap</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="" data-original-title="Dashboard">
                        <a class="nav-link" href="index.html">
                            <i class="fa fa-fw fa-dashboard"></i>
                            <span class="nav-link-text">Dashboard</span>
                        </a>
                    </li>

                    <li class="nav-item" data-toggle="tooltip" data-placement="right" title="" data-original-title="Tables">
                        <a class="nav-link" href="index.jsp">
                            <i class="fa fa-fw fa-table"></i>
                            <span class="nav-link-text">Danh Mục Sản Phẩm</span>
                        </a>
                        <a class="nav-link" href="addproduct.jsp">
                            <i class="fa fa-fw fa-table"></i>
                            <span class="nav-link-text">Thêm Sản Phẩm</span>
                        </a>
                        <a class="nav-link" href="deleteproduct.jsp">
                            <i class="fa fa-fw fa-table"></i>
                            <span class="nav-link-text">Xóa Sản Phẩm</span>
                        </a>
                        <a class="nav-link" href="addCategory.jsp">
                            <i class="fa fa-fw fa-table"></i>
                            <span class="nav-link-text">Thêm Danh Mục</span>
                        </a>
                    </li>




                </ul>
                <ul class="navbar-nav sidenav-toggler">
                    <li class="nav-item">
                        <a class="nav-link text-center" id="sidenavToggler">
                            <i class="fa fa-fw fa-angle-left"></i>
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link back-home" data-toggle="modal" data-target=""  href="../index.jsp">
                            <i class="fa fa-fw fa-sign-out"></i>Back To Home</a>
                    </li>
                </ul>
            </div>
        </nav>
    </body>
</html>
