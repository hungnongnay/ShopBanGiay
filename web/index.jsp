
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<c:set var="numPage" value="${param.numPage}"/>  
<c:set var="pageSize" value="6"/>

<c:if test="${numPage ==null}">
    <c:set var="numPage" value="1"/>   
</c:if>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">


        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="css/style.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>


        <jsp:include page="head.jsp"></jsp:include>
            <!-- Topbar End -->


            <!-- Navbar Start -->
            <div class="container-fluid mb-5">
                <div class="row border-top px-xl-5">
                    <div class="col-lg-3 d-none d-lg-block">
                        <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100" style="height: 65px; margin-top: -1px; padding: 0 30px;">
                            <h6>Categories</h6>
                        </a>
                        <nav class="collapse show navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0" id="navbar-vertical">
                            <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                                <a href="" class="nav-item nav-link">Adidas</a>
                                <a href="" class="nav-item nav-link">Nike</a>
                                <a href="" class="nav-item nav-link">Reebok</a>
                                <a href="" class="nav-item nav-link">Vans</a>
                                <a href="" class="nav-item nav-link">Converse</a>

                            </div>
                        </nav>
                    </div>
                    <div class="col-lg-9">
                        <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                            <a href="" class="text-decoration-none d-block d-lg-none">
                                <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                            </a>
                            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                                <div class="navbar-nav mr-auto py-0">
                                    <a href="index.jsp" class="nav-item nav-link active">Home</a>
                                    <a href="" class="nav-item nav-link">Shop</a>                                                          
                                    <a href="contact.jsp" class="nav-item nav-link">Contact</a>
                                </div>
                                <div class="navbar-nav ml-auto py-0">
                                    <a href="login.jsp" class="nav-item nav-link">Login</a>
                                    <a href="register.jsp" class="nav-item nav-link">Register</a>
                                </div>
                            </div>
                        </nav>
                        <div id="header-carousel" class="carousel slide" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active" style="height: 410px;">
                                    <img class="img-fluid" src="${lastProduct.img}" alt="Image">
                                    <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                        <div class="p-3" style="max-width: 700px;">
                                            <h4 class="text-light text-uppercase font-weight-medium mb-3">New Releases Shoes</h4>
                                            <h3 class="display-4 text-white font-weight-semi-bold mb-4">${lastProduct.name}</h3>
                                            <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                        </div>
                                    </div>
                                </div>                       
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="container-fluid pt-5">
                <div class="row px-xl-5 pb-3">
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                            <h5 class="font-weight-semi-bold m-0">Quality Product</h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                            <h5 class="font-weight-semi-bold m-0">Free Shipping</h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                            <h5 class="font-weight-semi-bold m-0">14-Day Return</h5>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                        <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                            <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                            <h5 class="font-weight-semi-bold m-0">24/7 Support</h5>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Categories Start -->
            <div class="container-fluid pt-5">
                <div class="row px-xl-5 pb-3">
                <c:forEach items="${listProduct}" var="product" begin="${(numPage-1)*pageSize}" end="${(numPage*pageSize)-1}">
                    <div class="col-lg-4 col-md-6 pb-1">
                        <div class="cat-item d-flex flex-column border mb-4" style="padding: 20px;">                     
                            <a href="" class="cat-img position-relative overflow-hidden mb-3">
                                <img style="width: 100%; height: 370px;" src="${product.img}">
                            </a>
                            <h5 class="text-primary font-weight-semi-bold m-0">${product.name}</h5>
                            <h5 class="text-danger font-weight-semi-bold m-0">$${product.price}</h5>
                            <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                        </div>
                    </div>        
                </c:forEach>
            </div>
        </div>

        <div class="container-fluid pb-3">
            <div class="row px-xl-5">
                <div class="col-lg-4 col-md-6 col-sm-12">
                </div>

                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div class="d-flex justify-content-center p-0">
                        <a href="homeServlet"><<</a>                                       
                        <a href="homeServlet?numPage=<fmt:formatNumber value="${(numPage!=1)?(numPage-1):1}" type="number" pattern="###"/>  "><</a>                      
                    ${numPage}                   
                        <a href="homeServlet?numPage=<fmt:formatNumber value="${(numPage!=lastPage)?(numPage+1):lastPage}" type="number" pattern="###"/> ">></a>
                        <a href="homeServlet?numPage=${lastPage}  ">>></a>
                    </div>
                </div>               
            </div>
        </div>
    </body>
</html>
