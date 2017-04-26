<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/7/2017
  Time: 3:28 PM
  To change this template use File | Settings | File Templates.
--%>

<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Product Inventory Page</h1>
            <p>Here! This is the product inventory page</p>
            <hr class="primary">
        </div>
        <table class="table table-striped table-hover table-bordered">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td>
                        <div class="row no-gutter popup-gallery">
                            <a href="<c:url value="/resources/img/productImages/${product.productId}.png" />" class="portfolio-box">
                                <img src="<c:url value="/resources/img/productImages/${product.productId}.png" />" class="img-responsive" alt="" style="width: 100%">
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
                    </td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td>
                        <a href="<c:url value="/product/viewProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-info-sign"></span>
                        </a>&nbsp;
                        <a href="<c:url value="/admin/product/deleteProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-remove-sign"></span>
                        </a>&nbsp;
                        <a href="<c:url value="/admin/product/editProduct/${product.productId}" />">
                            <span class="glyphicon glyphicon-edit"></span>
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="<c:url value="/admin/product/addProduct" />" class="btn btn-success">Add Product</a>
    </div><br>
    <div class="col-lg-8 col-lg-offset-2 text-center">
        <tag:paginate max="15" offset="${offset}" count="${count}"
                      uri="${pageContext.request.contextPath}/admin/productInventory" next="&raquo;" previous="&laquo;" />
    </div>
</section>
<!-- Plugin JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
<script src="<c:url value="/resources/vendor/scrollreveal/scrollreveal.min.js" />"></script>
<script src="<c:url value="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js" />"></script>
<!-- Theme JavaScript -->
<script src="<c:url value="/resources/js/creative.min.js" />"></script>