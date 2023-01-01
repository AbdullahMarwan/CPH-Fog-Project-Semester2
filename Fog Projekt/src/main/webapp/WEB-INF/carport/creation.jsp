<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../../error.jsp" isErrorPage="false" %>

<t:fogtemplate>
    <jsp:attribute name="header">
         Welcome to the logged in area
    </jsp:attribute>

    <jsp:attribute name="footer">
        Logged in area
    </jsp:attribute>

    <jsp:body>

        <p>Choose measurement for your carport:</p>

        <form action="svg" method="post">
            <select name="length">
                <option selected>Length</option>
                <option value="510">510</option>
                <option value="540">540</option>
                <option value="570">570</option>
                <option value="600">600</option>
            </select>
            <select name="width">
                <option selected>Width</option>
                <option value="620">620</option>
                <option value="680">680</option>
                <option value="740">740</option>
                <option value="800">800</option>
            </select>
            <button class="btn btn-primary" name="svg">Add to cart</button>
        </form>


    </jsp:body>

</t:fogtemplate>