<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/28/2017
  Time: 8:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Register Customer</h1>
            <p>Hey! Please fill in your information below.</p>
            <hr class="primary">
        </div>
    </div>
    <div class="container col-md-6 col-md-offset-3">
        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer">

            <h3 class="section-heading">Basic Information!</h3>

            <div class="form-group">
                <label for="name">Name</label><form:errors path="customerName" cssStyle="color: red" />
                <form:input path="customerName" id="name" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="email">Email</label><span style="color: red;">${emailMsg}</span><form:errors path="customerEmail" cssStyle="color: red" />
                <form:input path="customerEmail" id="email" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="phone">Phone</label><form:errors path="customerPhone" cssStyle="color: red" />
                <form:input path="customerPhone" id="phone" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="username">Username</label><span style="color: red;">${usernameMsg}</span><form:errors path="username" cssStyle="color: red" />
                <form:input path="username" id="username" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="password">Password</label><form:errors path="password" cssStyle="color: red" />
                <form:password path="password" id="password" cssClass="form-control" />
            </div><br>

            <h3 class="section-heading">Billing Address!</h3>

            <div class="form-group">
                <label for="streetName">Street</label><form:errors path="billingAddress.streetName" cssStyle="color: red" />
                <form:input path="billingAddress.streetName" id="streetName" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="apartmentNumber">Apartment</label><form:errors path="billingAddress.apartmentNumber" cssStyle="color: red" />
                <form:input path="billingAddress.apartmentNumber" id="apartmentNumber" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="city">City</label><form:errors path="billingAddress.city" cssStyle="color: red" />
                <form:input path="billingAddress.city" id="city" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="state">State</label><form:errors path="billingAddress.state" cssStyle="color: red" />
                <form:input path="billingAddress.state" id="state" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="country">Country</label><form:errors path="billingAddress.country" cssStyle="color: red" />
                <form:input path="billingAddress.country" id="country" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="zipCode">ZipCode</label><form:errors path="billingAddress.zipCode" cssStyle="color: red" />
                <form:input path="billingAddress.zipCode" id="zipCode" cssClass="form-control" />
            </div><br>

            <h3 class="section-heading">Shipping Address!</h3>

            <div class="form-group">
                <label for="streetName">Street</label><form:errors path="shippingAddress.streetName" cssStyle="color: red" />
                <form:input path="shippingAddress.streetName" id="streetName" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="apartmentNumber">Apartment</label><form:errors path="shippingAddress.apartmentNumber" cssStyle="color: red" />
                <form:input path="shippingAddress.apartmentNumber" id="apartmentNumber" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="city">City</label><form:errors path="shippingAddress.city" cssStyle="color: red" />
                <form:input path="shippingAddress.city" id="city" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="state">State</label><form:errors path="shippingAddress.state" cssStyle="color: red" />
                <form:input path="shippingAddress.state" id="state" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="country">Country</label><form:errors path="shippingAddress.country" cssStyle="color: red" />
                <form:input path="shippingAddress.country" id="country" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="zipCode">ZipCode</label><form:errors path="shippingAddress.zipCode" cssStyle="color: red" />
                <form:input path="shippingAddress.zipCode" id="zipCode" cssClass="form-control" />
            </div>

            <br>
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <input type="submit" value="submit" class="btn btn-success" />
                <a href="<c:url value="/" />" class="btn btn-primary">Cancel</a>
            </div>
        </form:form>
    </div>

</section>
<div style="padding-bottom: 5%" />
<div class="clearfix"/></div>

