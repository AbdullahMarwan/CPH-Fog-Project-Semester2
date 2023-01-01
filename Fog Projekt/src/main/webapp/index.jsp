<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:fogtemplate>
    <jsp:attribute name="header">
         Welcome to Johannes Fog's Carports
    </jsp:attribute>

    <jsp:body>

        <c:if test="${sessionScope.user != null}">
            <p>You are logged in with the role of "${sessionScope.user.role}".</p>
        </c:if>

        <c:if test="${sessionScope.user == null}">
            <p>You are not logged in yet. You can do it here:</p>
            <a class="btn btn-primary" href="login.jsp" role="button">Login</a>

            <p><br>Don't have an account? Sign up here:</p>
            <a class="btn btn-primary" href="signup.jsp" role="button">Sign Up</a>
        </c:if>
        
    </jsp:body>

</t:fogtemplate>