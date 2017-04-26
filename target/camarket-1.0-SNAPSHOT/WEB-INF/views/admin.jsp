<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/13/2017
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="portfolio">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">
                <c:if test="${pageContext.request.userPrincipal.name !=null}">
                    <h2 >
                        Welcome: <span class="text-uppercase">${pageContext.request.userPrincipal.name} </span>
                    </h2>
                </c:if>
            </h1>
            <p>Howdy! This is an administrator page.</p>
            <hr class="primary"><br>
            <h3>
                <a href="<c:url value="/admin/productInventory" /> " class="btn btn-lg btn-success">
                    Product Inventory
                </a>
            </h3>
            <p>Here you can view, check and modify the product inventory!</p>

            <br>

            <h3>
                <a href="<c:url value="/admin/customer" /> " class="btn btn-lg btn-success">
                    Customer Management
                </a>
            </h3>
            <p>Here you can view customer information!</p>
        </div>
    </div>
</section>