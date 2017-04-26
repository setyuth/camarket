<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/24/2017
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">All Available Products</h1>
            <p>Checkout all our awesome products available here!</p>

        </div>
    </div>
    <%--<div ng-controller="TableCtrl" class="container">
        <div class="input-group">
            <input class="form-control" ng-model="searchText" placeholder="Search products..." type="search" ng-change="search()" />
            <span class="input-group-addon">
                <span class="glyphicon glyphicon-search"></span></span>
        </div>
    </div>--%><hr class="primary"><br>
    <div class="container-fluid">
        <div class="row no-gutter">
            <c:forEach items="${products}" var="product">
                <div class="col-lg-4 col-sm-6">
                    <a href="<c:url value="/product/viewProduct/${product.productId}" />" class="portfolio-box">
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
            </c:forEach>
        </div>
    </div>
    <br><br><br>
    <div class="col-lg-8 col-lg-offset-2 text-center">
        <tag:paginate max="15" offset="${offset}" count="${count}"
                      uri="${pageContext.request.contextPath}/product/productList" next="&raquo;" previous="&laquo;" />
    </div>
</section>
