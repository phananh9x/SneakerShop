<%-- 
    Document   : deleteproduct
    Created on : Oct 26, 2017, 12:19:16 AM
    Author     : phana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                        <li class="breadcrumb-item active"><a href="index.jsp">Xóa Sản Phẩm</a></li>
                    </ol>
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group row">
                                <label for="tensp" class="col-sm-2 col-form-label">Mã Sản Phẩm</label>
                                <div class="col-sm-10">
                                    <input class="form-control" type="text" placeholder="Nhập mã sản phẩm cần xóa!"  id="masp">
                                </div>
                            </div>
                        </div>
                        <div class="box-footer">
                            <button id="xoa-sp" type="submit" class="btn btn-primary" >OK</button>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>

            </div>
        </div>


        <jsp:include page="footerAdmin.jsp"></jsp:include>
    </body>
</html>
