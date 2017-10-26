<%-- 
    Document   : addCategory
    Created on : Oct 26, 2017, 1:17:55 PM
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
                                <label for="tensp" class="col-sm-2 col-form-label">ID Danh Mục</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text"  id="idDanhMuc">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="giasp" class="col-sm-2 col-form-label">Tên Danh Mục</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="search"  id="tenDanhMuc">
                                </div>
                            </div>
                            <div class="box-footer">
                                <button id="form-danhmuc" type="submit" class="btn btn-primary" >Submit</button>
                            </div>
                        </div>
                        <!-- /.col -->
                    </div>

                </div>
            </div>


        <jsp:include page="footerAdmin.jsp"></jsp:include>

    </body></html>
    </body>
</html>
