/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function () {
    $("#form-sp").click(function (e) {
        var sampleText = document.getElementById("imagesp").files[0].name;
        var sampleFile = document.getElementById("imagesp").files[0];

        var formdata = new FormData();
        formdata.append("sampleText", sampleText);
        formdata.append("sampleFile", sampleFile);
        $.ajax({
            type: "post",
            url: "../UploadFileServlet", //this is my servlet
            cache: false,
            contentType: false,
            processData: false,
            data: formdata,
            success: function (hinh) {
                var name = $("#tensp").val();
                var gia = $("#giasp").val();
                var danhmuc = $("#danhmuc").val();
                $.ajax({
                    type: "post",
                    url: "../ProductServlet", //this is my servlet
                    data: "command=insert&name=" + name + "&price=" + gia + "&categoryid=" + danhmuc + "&image=" + hinh,
                    success: function () {
                        window.location.href = window.origin + "/SneakerShop/admin/index.jsp";
                    }
                })
            }
        });
    });

    $("#form-danhmuc").click(function (e){
        var id = $("#idDanhMuc").val();
        var name = $("#tenDanhMuc").val();
        $.ajax({
            type: "post",
            url: "../CategoryServlet", //this is my servlet
            data: "command=insert&id=" + id + "&name=" + name,
            success: function () {
                window.location.href = window.origin + "/SneakerShop/admin/index.jsp";
            }
        })
    })

    $("#xoa-sp").click(function (e) {
        var id = $("#masp").val();
        $.ajax({
            type: "post",
            url: "../ProductServlet", //this is my servlet
            data: "command=delete&id=" + ma,
            success: function () {
                window.location.href = window.origin + "/SneakerShop/admin/index.jsp";
            }
        })
    });
    
    $(".btn-xoa-sp").click(function (e) {
        var ma = $(this).attr("value");
        $.ajax({
            type: "post",
            url: "../ProductServlet", //this is my servlet
            data: "command=delete&id=" + ma,
            success: function () {
                window.location.href = window.origin + "/SneakerShop/admin/index.jsp";
            }
        })
    });
    
    $(".back-home").click(function (){
        window.location.href = window.origin + "/SneakerShop/index.jsp";
    })

    


    $(".addtocart").click(function ()
    {
        var that = this;
        $.ajax({
            type: "post",
            url: "CartServlet", //this is my servlet
            data: "command=plus&id=" + $(this).attr("id"),
            success: function (data) {
                var product = JSON.parse(data)[0];
                if (!product.quantity) {
                    var string = `<tr class="tr-cart ${product.id}">
                    <td class="text-center"><a href="product.html"><img class="img-thumbnail" src="images/product/${product.image}" alt="img"></a></td>
                    <td class="text-left"><a href="#">${product.name}</a></td>
                    <td class="text-right quality">1 X ${FormatNumber(product.price)}</td>
                    <td class="text-right price-new">${FormatNumber(product.price)}</td>
                    <td class="text-center"><button type="button" title="Remove" class="btn btn-xs remove"><i class="fa fa-times"></i></button></td>
                </tr>`;
                    $(".table.table-striped").append(string);
                    $(".btn.btn-xs.remove").click(function () {
                        var that = this;
                        var id = $(that).parent().parent().attr("class").split(" ")[1];
                        $.ajax({
                            type: "post",
                            url: "CartServlet", //this is my servlet
                            data: "command=remove&id=" + id,
                            success: function (data) {
                                window.location.href = window.location.href;
                            }
                        });
                    });
                } else {
                    $(`.tr-cart.${product.id}`).find(".quality").text(`${product.quantity}` + ` X ` + FormatNumber(`${product.price}`));
                    $(`.tr-cart.${product.id}`).find(".price-new").text(FormatNumber(`${product.total}`));
                }
                $(".my-cart strong").text(`My cart(${product.size})`);
                $(".cart-total").text(FormatNumber(`${product.totalPrice}`) + ` VNĐ`);
                $(".pricetotal .price-new").text(FormatNumber(`${product.totalPrice} VNĐ`));
            }
        });
    });

    $(".btn.btn-xs.remove").click(function () {
        var that = this;
        var id = $(that).parent().parent().attr("class").split(" ")[1];
        $.ajax({
            type: "post",
            url: "CartServlet", //this is my servlet
            data: "command=remove&id=" + id,
            success: function (data) {
                window.location.href = window.location.href;
            }
        });
    });

    $(".delete i").click(function () {
        var that = this;
        var id = $(that).attr("value");
        $.ajax({
            type: "post",
            url: "CartServlet", //this is my servlet
            data: "command=remove&id=" + id,
            success: function (data) {
                window.location.href = window.location.href;
            }
        });
    });
    function FormatNumber(str) {
        var strTemp = GetNumber(str);
        if (strTemp.length <= 3)
            return strTemp;
        strResult = "";
        for (var i = 0; i < strTemp.length; i++)
            strTemp = strTemp.replace(",", "");
        var m = strTemp.lastIndexOf(".");
        if (m == -1) {
            for (var i = strTemp.length; i >= 0; i--) {
                if (strResult.length > 0 && (strTemp.length - i - 1) % 3 == 0)
                    strResult = "," + strResult;
                strResult = strTemp.substring(i, i + 1) + strResult;
            }
        } else {
            var strphannguyen = strTemp.substring(0, strTemp.lastIndexOf("."));
            var strphanthapphan = strTemp.substring(strTemp.lastIndexOf("."),
                    strTemp.length);
            var tam = 0;
            for (var i = strphannguyen.length; i >= 0; i--) {

                if (strResult.length > 0 && tam == 4) {
                    strResult = "," + strResult;
                    tam = 1;
                }

                strResult = strphannguyen.substring(i, i + 1) + strResult;
                tam = tam + 1;
            }
            strResult = strResult + strphanthapphan;
        }
        return strResult;
    }
    function GetNumber(str) {
        var count = 0;
        for (var i = 0; i < str.length; i++) {
            var temp = str.substring(i, i + 1);
            if (!(temp == "," || temp == "." || (temp >= 0 && temp <= 9))) {
                alert(inputnumber);
                return str.substring(0, i);
            }
            if (temp == " ")
                return str.substring(0, i);
            if (temp == ".") {
                if (count > 0)
                    return str.substring(0, ipubl_date);
                count++;
            }
        }
        return str;
    }

    function IsNumberInt(str) {
        for (var i = 0; i < str.length; i++) {
            var temp = str.substring(i, i + 1);
            if (!(temp == "." || (temp >= 0 && temp <= 9))) {
                alert(inputnumber);
                return str.substring(0, i);
            }
            if (temp == ",") {
                return str.substring(0, i);
            }
        }
        return str;
    }




});
