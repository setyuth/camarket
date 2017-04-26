<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 4/7/2017
  Time: 8:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Order</h1>
            <p>Order Confirmation</p>
            <hr class="primary">
        </div>
    </div>
    <div class="container">
        <div class="row">
            <form:form commandName="order" cssclass="form-horizontal">
                <div class="row">
                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">

                        <div class="text-center">
                            <h2>Receipt</h2>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Shipping Address</strong><br>
                                        ${order.cart.customer.shippingAddress.streetName}<br>
                                        ${order.cart.customer.shippingAddress.apartmentNumber}<br>
                                        ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}<br>
                                        ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Shipping Date: <fmt:formatDate value="${now}" type="date" /> </p>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Billing Address</strong><br>
                                        ${order.cart.customer.billingAddress.streetName}<br>
                                        ${order.cart.customer.billingAddress.apartmentNumber}<br>
                                        ${order.cart.customer.billingAddress.city}, ${order.cart.customer.billingAddress.state}<br>
                                        ${order.cart.customer.billingAddress.country}, ${order.cart.customer.billingAddress.zipCode}
                                </address>
                            </div>
                        </div>

                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>#</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><en>${cartItem.product.productName}</en></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right"><strong>Grand Total: </strong></td>
                                    <td class="text-center text-danger">
                                        <h4><strong>${order.cart.grandTotal}</strong></h4>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>


                <input type="hidden" name="_flowExecutionKey" />
            <%--This is indicate that it's the part of the workflow--%>
                <br>

                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <button class="btn btn-info" name="_eventId_backToCollectShippingDetail">Back</button>
                    <input type="submit" value="Submit Order" class="btn btn-success" name="_eventId_orderConfirmed" />
                    <button class="btn btn-info" name="_eventId_cancel">Cancel</button>
                </div>
            </form:form>
        </div>
    </div>

</section>
<div class="clearfix"/></div>
