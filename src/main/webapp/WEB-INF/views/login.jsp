<%--
  Created by IntelliJ IDEA.
  User: Yuth
  Date: 3/16/2017
  Time: 9:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<section id="portfolio">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Login Page</h2>
                <p>Howdy! This is a login page.</p>
                <hr class="primary"><br>
            </div>
            <div class="container col-md-6 col-md-offset-3">

                <c:if test="${not empty msg}">
                    <div class="msg alert-success">${msg}</div>
                </c:if>

                <form name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">

                    <c:if test="${not empty error}">
                        <div class="error alert-danger">${error}</div>
                    </c:if>

                    <div class="form-group">
                        <label for="username">User: </label>
                        <input type="text" id="username" name="username" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="password">Password: </label>
                        <input type="password" id="password" name="password" class="form-control" />
                    </div>

                    <input type="submit" value="Submit" class="btn btn-success" />

                    <input type="hidden" name="${_csrf_parameterName}" value="${_csrf.token}" />
                </form>
            </div>
        </div>
    </div>
</section>
