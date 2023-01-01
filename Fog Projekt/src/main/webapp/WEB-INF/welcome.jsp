<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <%@page errorPage="error.jsp" isErrorPage="false" %> --%>

<t:fogtemplate>
    <jsp:attribute name="header">
         You are now logged in
    </jsp:attribute>

    <jsp:attribute name="footer">
        Welcome
    </jsp:attribute>

    <jsp:body>

        <c:if test="${sessionScope.user.role == 'admin'}">
            <p><br>View Database Materials:</p>

            <form action="materialList">
                <button type="submit" class="btn btn-primary">
                    View Material List
                </button>
            </form>

            <p><br>View Customer Orders:</p>

            <form action="orderList">
                <button type="submit" class="btn btn-primary">
                    View Orders
                </button>
            </form>


        </c:if>

        <p><br>Create your own carport:</p>
        <form action="createCarport">
            <button type="submit" class="btn btn-primary">
                Create Carport
            </button>
        </form>

    </jsp:body>

</t:fogtemplate>