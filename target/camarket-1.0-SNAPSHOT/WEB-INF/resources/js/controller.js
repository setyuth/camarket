/**
 * Created by Yuth on 3/21/2017.
 */

var cartApp = angular.module("cartApp", []);

cartApp.controller('cartCtrl', function ($scope, $http) {
    $scope.refreshCart = function () {
        $http.get('/camarket/rest/cart/' + $scope.cartId).success(function _successGet(data) {
            $scope.cart = data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/camarket/rest/cart/' + $scope.cartId)
            .success(function _successDelete() {
                $scope.refreshCart();
            });

    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $http.get('/camarket/rest/cart/' + $scope.cartId).success(function _successInit(data) {
            $scope.cart = data;
        });
    };

    $scope.addToCart = function (productId) {
        $http.put('/camarket/rest/cart/add/' + productId)
            .success(function _successPut() {
                alert("Product Successfully added to the Cart!");
            }).error(function _errorPut() {
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/camarket/rest/cart/remove/' + productId)
            .success(function _successPut() {
                $scope.refreshCart();
            }).error(function _errorPut() {
        });
    };

    $scope.calGrandTotal = function() {
        var grandTotal=0;

        for (var i=0; i<$scope.cart.cartItems.length; i++) {
            grandTotal+=$scope.cart.cartItems[i].totalPrice;
        }

        return grandTotal;
    };


});