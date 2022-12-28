<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@page errorPage="error.jsp" isErrorPage="false" %> --%>

<t:fogtemplate>
    <jsp:attribute name="header">
         Material List
    </jsp:attribute>

    <jsp:attribute name="footer">
        Material List
    </jsp:attribute>

    <jsp:body>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Id</th>
                <th>Item</th>
                <th>Price</th>
                <th>Description</th>
            </tr>
            </thead>
            <c:forEach var="item" items="${requestScope.materialList}">
                <tr>
                    <td>
                            ${item.id}
                    </td>
                    <td>
                            ${item.name}
                    </td>
                    <td>
                            ${item.price}
                    </td>
                    <td>
                            ${item.description}
                    </td>
                </tr>
            </c:forEach>
        </table>

    </jsp:body>

</t:fogtemplate>