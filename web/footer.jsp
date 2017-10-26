<%-- 
    Document   : footer
    Created on : Oct 22, 2017, 3:00:04 PM
    Author     : phana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer</title>
    </head>
    <body>
        <!-- Footer block Start  -->
        <footer id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class= "newslatter">
<!--                            <form>
                                <h2>Be the first to hear our exciting news</h2>
                                <div class="input-group">
                                    <input class=" form-control" type="text" placeholder="Email Here......">
                                    <button type="submit" value="Sign up" class="btn btn-large btn-primary">Sign up</button>
                                </div>
                            </form>-->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="about">
                            <div class="footer-logo"></div>
                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature in Virginia</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="new-store">
                            <h4>What's in store</h4>
                            <ul class="toggle-footer">
                                <li><a href="#">Returns</a></li>
                                <li><a href="#">Delivery Options</a></li>
                                <li><a href="#">Brand Directory</a></li>
                                <li><a href="#">Buying Guides</a></li>
                                <li><a href="#">My Account</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="information">
                            <h4>information</h4>
                            <ul class="toggle-footer">
                                <li><a href="#">Returns</a></li>
                                <li><a href="#">Delivery Options</a></li>
                                <li><a href="#">Brand Directory</a></li>
                                <li><a href="#">Buying Guides</a></li>
                                <li><a href="#">My Account</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="contact">
                            <h4>Contact Us</h4>
                            <ul class="toggle-footer">
                                <li> <i class="fa fa-map-marker"></i>
                                    <div class="address-info">Warehouse & Offices 12345 Street name,California, USA </div>
                                </li>
                                <li> <i class="fa fa-mobile"></i>
                                    <div class="call-info">+91 987-654-321<br>
                                        <span>+0987-654-321</span> </div>
                                </li>
                                <li> <i class="fa fa-envelope"></i>
                                    <div class="email-info"> <a href="#">support@webtrap.in</a></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="social-link">
                                <ul>
                                    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="footer-link">
                                <ul>
                                    <li><a href="#">Specials</a></li>
                                    <li><a href="#">Affiliates</a></li>
                                    <li><a href="#">Gift Vouchers</a></li>
                                    <li><a href="#">Brands</a></li>
                                    <li><a href="#">Returns</a></li>
                                    <li><a href="#">Site Map</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="copy-right">
                                <p> All Rights Reserved. Copyright 2016 Powered by Webtrap.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-offer">
                    <h2>$2.55 Next Day Delivery! Ends 8PM ! USE CODE FLASH</h2>
                </div>
            </div>
        </footer>
        <!-- Footer block End  --> 
        !-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
        <script src="js/jQuery.js"></script> 
        <!-- Include all compiled plugins (below), or include individual files as needed --> 
        <script src="Bootstrap/js/bootstrap.js"></script> 
        <script src="js/owl.carousel.min.js"></script> 
        <script src="js/globle.js"></script>
        <script src="js/app.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#username").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_name = $(this).val();
                    x_timer = setTimeout(function () {
                        check_username_ajax(user_name);
                    }, 1000);
                });

                function check_username_ajax(username) {
                    $("#user-result").html('<img src="img/ajax-loader.gif" />');
                    $.post('CheckEmailServlet', {'username': username}, function (data) {
                        $("#user-result").html(data);
                    });
                }
            });
        </script>

    </body>
</html>
