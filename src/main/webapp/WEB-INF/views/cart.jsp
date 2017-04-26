<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/20/2017
  Time: 10:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Cart</h1>
            <p>Hey! All the selected products in your shopping cart.</p>
            <hr class="primary">
        </div>
    </div>
    <div class="container" ng-app="cartApp">
        <div ng-controller = "cartCtrl" ng-init = "initCartId('${cartId}')">
            <div>
                <a class="btn btn-danger pull-left" ng-click="clearCart()">
                    <span class="glyphicon glyphicon-remove-sign">Clear Cart</span>
                </a>
                <a href="<c:url value="/order/${cartId}" />" class="btn btn-info pull-right">
                    <span class="glyphicon glyphicon-shopping-cart"></span>Check out!
                </a>
            </div>
            <table class="table table-hover">
                <tr>
                    <th>Product</th>
                    <th>Unit Price</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>
                </tr>
                <tr ng-repeat = "item in cart.cartItems">

                    <td>{{item.product.productName}}</td>
                    <td>{{item.product.productPrice}}</td>
                    <td>{{item.quantity}}</td>
                    <td>{{item.totalPrice}}</td>
                    <td>
                        <a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                            <span class="glyphicon glyphicon-remove"></span>Remove
                        </a>
                    </td>
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                    <th>Grand Total</th>
                    <th>{{calGrandTotal()}}</th>
                    <th></th>
                </tr>
            </table>

            <a href="<c:url value="/product/productList" />" class="btn btn-info">Continue Shopping</a>
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

<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>