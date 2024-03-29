<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:fogtemplate>
    <jsp:attribute name="header">
         SVG Drawing
    </jsp:attribute>

    <jsp:attribute name="footer">
         SVG
    </jsp:attribute>

    <jsp:body>

        <button onclick="history.back()" class="btn btn-primary">Go Back</button>

        <br><br>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Length</th>
                <th>Width</th>
                <th>Price</th>
                <th>Has a Shed</th>
            </tr>
            </thead>
            <tr>
                <td>
                        ${requestScope.length}
                </td>
                <td>
                        ${requestScope.width}
                </td>
                <td>
                        ${requestScope.user}
                </td>
                <td>
                        ${requestScope.hasShed}
                </td>
            </tr>
        </table>

        <h4><br>Are you satisfied with your carport dimensions and price?</h4>
        <form action="createOrder">
            <input type="hidden" name="length" value="${requestScope.length}"/>
            <input type="hidden" name="width" value="${requestScope.width}"/>
            <input type="hidden" name="hasShed" value="${requestScope.hasShed}"/>
            <button type="submit" class="btn btn-primary">
                Confirm Order
            </button>
        </form>

        <br>

        <h3><br>SVG Drawing of your chosen carport:</h3>

        ${requestScope.svg}

    </jsp:body>

</t:fogtemplate>