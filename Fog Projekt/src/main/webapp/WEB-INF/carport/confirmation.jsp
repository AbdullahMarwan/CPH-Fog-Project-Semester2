<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../../error.jsp" isErrorPage="false" %>

<t:fogtemplate>
    <jsp:attribute name="header">
         Confirmation on your order
    </jsp:attribute>

    <jsp:attribute name="footer">
        Confirmation on your order
    </jsp:attribute>

    <jsp:body>
        <p>A Fog Employee will confirm your order</p>

        <p><br>Return to the frontpage:</p>
        <%-- <a class="btn btn-primary" href="${pageContext.request.contextPath}/WEB-INF/welcome.jsp" role="button"></a> --%>

        <form action="welcomeServlet">
            <button type="submit" class="btn btn-primary">
                Return
            </button>
        </form>
    </jsp:body>

</t:fogtemplate>