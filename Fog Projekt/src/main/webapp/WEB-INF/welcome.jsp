<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:fogtemplate>
    <jsp:attribute name="header">
         Material List
    </jsp:attribute>

    <jsp:attribute name="footer">
        Material List
    </jsp:attribute>

    <jsp:body>

        <form method="post">

        <h3>Material List</h3>
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Item</th>
                <th>Action</th>
            </tr>
            </thead>
            <c:forEach var="item" items="${requestScope.materialList}">
                <tr>
                    <td>
                            ${item.name} (${item.price})
                    </td>
                </tr>
            </c:forEach>
        </table>

    </jsp:body>

</t:fogtemplate>