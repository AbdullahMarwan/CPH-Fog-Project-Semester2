<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@page errorPage="../error.jsp" isErrorPage="false" %> --%>

<t:fogtemplate>
    <jsp:attribute name="header">
         Order Details
    </jsp:attribute>

    <jsp:attribute name="footer">
         OrderDetails
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
                <th>Username</th>
                <th>Has a Shed</th>
                <th>Is Paid?</th>
                <th>Offer Accepted?</th>
            </tr>
            </thead>
            <tr>
                <td>
                        ${requestScope.carport.length}cm
                </td>
                <td>
                        ${requestScope.carport.width}cm
                </td>
                <td>
                        ${requestScope.carport.totalPrice}
                </td>
                <td>
                        ${requestScope.order.customerName}
                </td>
                <td>
                        ${requestScope.carport.hasShed}
                </td>
                <td>
                        ${requestScope.carport.paymentPaid}
                </td>
                <td>
                        ${requestScope.carport.offerAccepted}
                </td>
            </tr>
        </table>

        <br>

        <h3><br>SVG Drawing of the carport:</h3>

        ${requestScope.svg}

    </jsp:body>

</t:fogtemplate>