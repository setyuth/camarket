<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 4/7/2017
  Time: 9:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading text-danger">Invalid Cart!</h1>
            <hr class="primary">
            <a href="<c:url value="/product/productList" />" class="btn btn-success btn-lg">Products!</a>
        </div>
    </div>
</section>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
