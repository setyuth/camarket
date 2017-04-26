<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/13/2017
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="services">
    <div class="container-fluid">
        <div class="col-lg-8 col-lg-offset-2 text-center">
            <h1 class="section-heading">Add Product Page</h1>
            <p>Hey! Please fill out the below information to add a product.</p>
            <hr class="primary">
        </div>
    </div>
    <div class="container col-md-6 col-md-offset-3">
        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post"
                   commandName="product" enctype="multipart/form-data">

            <div class="form-group">
                <label for="name">Name</label><form:errors path="productName" cssStyle="color: red;" />
                <form:input path="productName" id="name" cssClass="form-control" />
            </div>
            
            <div class="form-group">
                <label for="category">Category</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="iPhone" />iPhone
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="samsung" />Samsung
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="window-phone" />Window-Phone
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCategory" id="category" value="accessory" />Accessory
                </label>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="productDescription" id="description" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="price">Price</label><form:errors path="productPrice" cssStyle="color: red;" />
                <form:input path="productPrice" id="price" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCondition" id="condition" value="new" />New Arrival
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productCondition" id="condition" value="uesed" />Used
                </label>
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productStatus" id="status" value="active" />Active
                </label>
                <label class="checkbox-inline">
                    <form:radiobutton path="productStatus" id="status" value="inactive" />Inactive
                </label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Unit In Stock</label><form:errors path="unitInStock" cssStyle="color: red;" />
                <form:input path="unitInStock" id="unitInStock" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:input path="productManufacturer" id="manufacturer" cssClass="form-control" />
            </div>

            <div class="form-group">
                <label  class="control-label" for="productImage">Upload Picture</label>
                <form:input path="productImage" id="productImage" cssStyle="form:input-large" type="file" />
            </div>
            <br>
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <input type="submit" value="submit" class="btn btn-success" />
                <a href="<c:url value="/admin/productInventory" />" class="btn btn-primary">Cancel</a>
            </div>
        </form:form>
    </div>

</section>
<div style="padding-bottom: 5%" />
<div class="clearfix"/></div>