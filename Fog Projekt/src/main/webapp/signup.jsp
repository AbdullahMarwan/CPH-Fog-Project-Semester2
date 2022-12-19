<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page errorPage="error.jsp" isErrorPage="false" %>

<t:fogtemplate>
    <jsp:attribute name="header">
             Sign Up
    </jsp:attribute>
    
    <jsp:body>

        <h3>You can Sign Up here</h3>

        <form action="signup" method="post">
            <label for="username">Username: </label>
            <input type="text" id="username" name="username"/>
            <label for="password">Password: </label>
            <input type="password" id="password" name="password"/>
            <input type="submit"  value="Create Account"/>
        </form>

        <p><br>Already have an account? You can login here:</p>
        <a class="btn btn-primary" href="login.jsp" role="button">Login</a>

    </jsp:body>
</t:fogtemplate>