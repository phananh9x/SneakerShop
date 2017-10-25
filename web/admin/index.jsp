<%-- 
    Document   : index
    Created on : Oct 25, 2017, 8:53:03 AM
    Author     : phana
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="model.Product"%>
<%@page import="dao.ProductDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en"><head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    </head>
    <jsp:include page="header.jsp"></jsp:include>
        <body class="fixed-nav sticky-footer bg-dark" id="page-top">
        <jsp:include page="aside.jsp"></jsp:include>
            <div class="content-wrapper">
                <div class="container-fluid">
                    <!-- Breadcrumbs-->
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="#">Dashboard</a>
                        </li>
                        <li class="breadcrumb-item active"><a href="index.jsp">Danh sách sản phẩm</a></li>
                     </ol>
                                    <!-- Example DataTables Card-->
                                    <div class="card mb-3">
                                        <div class="card-header">
                                            <i class="fa fa-table"></i> Danh sách sản phẩm</div>
                                        <div class="card-body">
                                        <%
                                            ProductDAO productDAO = new ProductDAO();

                                        %>
                                        <div class="table-responsive">
                                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Tên Sản Phẩm</th>
                                                        <th>Giá</th>
                                                        <th>Danh mục</th>
                                                        <th>hình</th>
                                                    </tr>
                                                </thead>
                                                <tfoot>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Tên Sản Phẩm</th>
                                                        <th>Giá</th>
                                                        <th>Danh mục</th>
                                                        <th>Hình</th>
                                                    </tr>
                                                </tfoot>
                                                <tbody>
                                                    <%                      DecimalFormat formatter = new DecimalFormat("###,###,###");
                                                        for (Product p : productDAO.getAllProduct()) {
                                                    %>
                                                    <tr>
                                                        <td style="line-height: 150px;"><%=p.getProductID()%></td>
                                                        <td style="line-height: 150px;"><%=p.getProductName()%></td>
                                                        <td style="line-height: 150px;"><%=formatter.format(p.getProductPrice())%> VNĐ</td>
                                                        <td style="line-height: 150px;"><%=p.getCategoryID()%></td>
                                                        <td style="display: flex;justify-content: center;">
                                                            <img src="../images/product/<%=p.getProductImage()%>" style="height: 150px;">
                                                        </td>
                                                    </tr>
                                                    <%}%>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                </div>
                                </div>
                                </div>


                                <jsp:include page="footerAdmin.jsp"></jsp:include>

                                </body></html>