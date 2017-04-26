<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 4/7/2017
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Shipping Address</h1>
            <p>Shipping Address Details</p>
            <hr class="primary">
        </div>
    </div>
    <div class="container col-md-6 col-md-offset-3">
        <div class="row">
            <form:form commandName="order" cssclass="form-horizontal">

                <h3 class="section-heading">Shipping Address!</h3>

                <div class="form-group">
                    <label for="streetName">Street</label>
                    <form:input path="cart.customer.shippingAddress.streetName" id="streetName" cssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="apartmentNumber">Apartment</label>
                    <form:input path="cart.customer.shippingAddress.apartmentNumber" id="apartmentNumber" cssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="city">City</label>
                    <form:input path="cart.customer.shippingAddress.city" id="city" cssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="state">State</label>
                    <form:input path="cart.customer.shippingAddress.state" id="state" cssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="country">Country</label>
                    <form:input path="cart.customer.shippingAddress.country" id="country" cssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="zipCode">ZipCode</label>
                    <form:input path="cart.customer.shippingAddress.zipCode" id="zipCode" cssClass="form-control" />
                </div>

                <input type="hidden" name="_flowExecutionKey" />
                <%--This is indicate that it's the part of the workflow--%>
                <br>

                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <button class="btn btn-info" name="_eventId_backToCollectCustomerInfo">Back</button>
                    <input type="submit" value="Next" class="btn btn-success" name="_eventId_shippingDetailCollected" />
                    <button class="btn btn-info" name="_eventId_cancel">Cancel</button>
                </div>
            </form:form>
        </div>
    </div>

</section>
<div style="padding-bottom: 5%" />
<div class="clearfix"/></div>
