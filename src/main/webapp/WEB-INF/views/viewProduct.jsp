<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/10/2017
  Time: 2:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Product Detail</h1>
            <p>Heere is the detail information of the product!</p>
            <hr class="primary">
        </div>
    </div>
    <div class="container" ng-app = "cartApp">
        <div class="col-md-5">
            <div class="row no-gutter popup-gallery">
                <a href="<c:url value="/resources/img/productImages/${product.productId}.png" />" class="portfolio-box">
                    <img src="<c:url value="/resources/img/productImages/${product.productId}.png" />" class="img-responsive" alt="">
                    <div class="portfolio-box-caption">
                        <div class="portfolio-box-caption-content">
                            <div class="project-category text-faded">
                                ${product.productCategory}
                            </div>
                            <div class="project-name">
                                ${product.productName}
                            </div>
                        </div>
                    </div>
                </a>
            </div>
        </div>

        <div class="col-md-5 col-md-offset-1">
            <h3>Product name :${product.productName}</h3>
            <p>Product description :${product.productDescription}</p>
            <p>Manufacturer :${product.productManufacturer}</p>
            <p>Category :${product.productCategory}</p>
            <p>Condition :${product.productCondition}</p>
            <p>Price :<strong>${product.productPrice} USD</strong></p>

            <br>

            <c:set var="role" scope="page" value="${param.role}" />
            <c:set var="url" scope="page" value="/product/productList" />

            <c:if test="${role = 'admin'}">
                <c:set var="url" scope="page" value="/admin/productInventory" />
            </c:if>

            <p ng-controller = "cartCtrl">
            <c:if test="${pageContext.request.userPrincipal.name == 'admin' || pageContext.request.userPrincipal.name == null}">
                <a href="<c:url value="${url}" />" class="btn btn-info btn-lg">Back</a>
            </c:if>
            <c:if test="${pageContext.request.userPrincipal.name !=null && pageContext.request.userPrincipal.name != 'admin'}">
                <a href="<c:url value="${url}" />" class="btn btn-info">Back</a>
                <a href="" class="btn btn-warning btn-lg" ng-click = "addToCart('${product.productId}')">
                    <span class="glyphicon glyphicon-shopping-cart"></span> Order Now
                </a>
                <a href="<c:url value="/customer/cart" />" class="btn btn-info">
                    <span class="glyphicon glyphicon-hand-right"></span> View Cart
                </a>
            </c:if>
            </p>
        </div>

    </div>
</section>
<script src="<c:url value="/resources/js/controller.js" />" />
<!-- Plugin JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="<c:url value="/resources/vendor/scrollreveal/scrollreveal.min.js" />"></script>
<script src="<c:url value="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js" />"></script>
<!-- Theme JavaScript -->
<script src="<c:url value="/resources/js/creative.min.js" />"></script>