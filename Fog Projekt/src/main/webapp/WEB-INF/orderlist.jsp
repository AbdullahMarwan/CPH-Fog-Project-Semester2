<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@page errorPage="error.jsp" isErrorPage="false" %> --%>

<t:fogtemplate>
    <jsp:attribute name="header">
         Order List
    </jsp:attribute>

    <jsp:attribute name="footer">
        Order List
    </jsp:attribute>

    <jsp:body>
        <button onclick="history.back()" class="btn btn-primary">Go Back</button>

        <br><br>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Order Id</th>
                <th>Customer Name</th>
                <th>Order Date</th>
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach var="item" items="${requestScope.orderList}">
                <tr>
                    <td>
                            ${item.orderId}
                    </td>
                    <td>
                            ${item.customerName}
                    </td>
                    <td>
                            ${item.orderDate}
                    </td>
                    <td>
                        <form action="orderDetails" method="post">
                            <input type="hidden" name="order_id" value="${item.orderId}"/>
                            <button type="submit" class="btn btn-primary">
                                View Details
                            </button>
                        </form>
                        <form action="deleterOrder" method="post">
                            <input type="hidden" name="order_id" value="${item.orderId}"/>
                            <button type="submit" class="btn btn-primary">
                                Delete Order
                            </button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>

    </jsp:body>

</t:fogtemplate>