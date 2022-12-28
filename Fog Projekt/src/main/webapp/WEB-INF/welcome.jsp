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
            <%-- <a class="btn btn-primary" href="${pageContext.request.contextPath}/WEB-INF/materiallist.jsp" role="button">View1</a> --%>

            <form action="materialList" >
                <button type="submit" class="btn btn-primary" >
                    View Material List
                </button>
            </form>

        </c:if>

        <p><br>Create your own carport:</p>
        <a class="btn btn-primary" href="WEB-INF/carport/creation.jsp" role="button">View</a>


    </jsp:body>

</t:fogtemplate>