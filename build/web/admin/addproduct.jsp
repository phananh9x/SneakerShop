<%-- 
    Document   : addproduct
    Created on : Oct 25, 2017, 5:33:51 PM
    Author     : phana
--%>

<%@page import="model.Category"%>
<%@page import="dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                        <li class="breadcrumb-item active"><a href="index.jsp">Thêm Sản Phẩm</a></li>
                    </ol>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group row">
                                <label for="tensp" class="col-sm-2 col-form-label">Tên Sản Phẩm</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"  id="tensp">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="giasp" class="col-sm-2 col-form-label">Giá Sản Phẩm</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="search"  id="giasp">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="danhmuc" class="col-sm-2 col-form-label">Danh Mục</label>
                                <div class="col-sm-10">
                                    <select class="form-control"  id="danhmuc">
                                        <% 
                                            CategoryDAO categoryDAO = new CategoryDAO();
                                            for(Category c : categoryDAO.getListCategory()){
                                        %>
                                        <option value="<%=c.getCategoryID()%>"><%=c.getCategoryName()%></option>
                                        <%}%>
                                    </select>
                                </div>
                                
                            </div>
                            <div class="form-group row">
                                <label for="imagesp" class="col-sm-2 col-form-label">Hình Sản Phẩm</label>
                                <div class="col-sm-10">
                                    <input type="file" id="imagesp" name="sampleFile">
                                </div>
                            </div>
                            <div class="box-footer">
                                <button id="form-sp" type="submit" class="btn btn-primary" >Submit</button>
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>

                </div>
            </div>


        <jsp:include page="footerAdmin.jsp"></jsp:include>

    </body></html>
