<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 4/7/2017
  Time: 8:38 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Customer</h1>
            <p>Customer Details</p>
            <hr class="primary">
        </div>
    </div>
    <div class="container col-md-6 col-md-offset-3">
        <form:form commandName="order" cssclass="form-horizontal">

            <h3 class="section-heading">Basic Information!</h3>

            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="cart.customer.customerName" id="name" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <form:input path="cart.customer.customerEmail" id="email" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <form:input path="cart.customer.customerPhone" id="phone" cssClass="form-control" />
            </div>


            <h3 class="section-heading">Billing Address!</h3>

            <div class="form-group">
                <label for="streetName">Street</label>
                <form:input path="cart.customer.billingAddress.streetName" id="streetName" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="apartmentNumber">Apartment</label>
                <form:input path="cart.customer.billingAddress.apartmentNumber" id="apartmentNumber" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="city">City</label>
                <form:input path="cart.customer.billingAddress.city" id="city" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="state">State</label>
                <form:input path="cart.customer.billingAddress.state" id="state" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="country">Country</label>
                <form:input path="cart.customer.billingAddress.country" id="country" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="zipCode">ZipCode</label>
                <form:input path="cart.customer.billingAddress.zipCode" id="zipCode" cssClass="form-control" />
            </div>

            <input type="hidden" name="_flowExecutionKey" />
            <%--This is indicate that it's the part of the workflow--%>
            <br>

            <div class="col-lg-8 col-lg-offset-2 text-center">
                <input type="submit" value="Next" class="btn btn-success" name="_eventId_customerInfoCollected" />
                <button class="btn btn-info" name="_eventId_cancel">Cancel</button>
            </div>
        </form:form>
    </div>

</section>
<div style="padding-bottom: 5%" />
<div class="clearfix"/></div>
