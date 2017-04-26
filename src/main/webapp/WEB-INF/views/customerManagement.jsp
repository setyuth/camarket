<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 4/7/2017
  Time: 11:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Customer Management Page</h1>
            <p>Hey! This is the customer management page</p>
            <hr class="primary">
        </div>
    </div>
    <div class="container">
        <table class="table table-hover table-striped">
            <thead>
            <tr bg-success>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Username</th>
                <th>Enabled</th>
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tbody>
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
                </tbody>
            </c:forEach>
        </table>
        <div class="col-lg-8 col-lg-offset-2 text-center">
        <tag:paginate max="15" offset="${offset}" count="${count}"
                      uri="${pageContext.request.contextPath}/admin/customer" next="&raquo;" previous="&laquo;" />
        </div>
    </div>

</section>