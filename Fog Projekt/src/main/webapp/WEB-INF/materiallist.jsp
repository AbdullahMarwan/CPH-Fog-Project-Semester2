<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="../error.jsp" isErrorPage="false" %>

<t:fogtemplate>
    <jsp:attribute name="header">
         Welcome to the logged in area
    </jsp:attribute>

    <jsp:attribute name="footer">
        Logged in area
    </jsp:attribute>

    <jsp:body>

        <form method="post">

            <div class="mb-4">
                <input type="text" name="name"/>
                <button formaction="additem">
                    Add item
                </button>
            </div>

            <h3>Doing</h3>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Item</th>
                    <th>Action</th>
                </tr>
                </thead>
                <c:forEach var="item" items="${requestScope.itemList}">
                    <c:if test="${item.done == false}">
                        <tr>
                            <td>
                                    ${item.name} (${item.created})
                            </td>
                            <td>
                                <button formaction="toggleitem" name="item_id" value="${item.id}">
                                    Done
                                </button>
                                <button formaction="editform" name="item_id" value="${item.id}">
                                    Edit
                                </button>
                            </td>
                        </tr>
                    </c:if>
                </c:forEach>
            </table>

            <h3>Done</h3>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>Item</th>
                    <th>Action</th>
                </tr>
                </thead>
                <c:forEach var="item" items="${requestScope.itemList}">
                    <c:if test="${item.done == true}">
                        <tr>
                            <td>
                                    ${item.name} (${item.created})
                            </td>
                            <td>
                                <button formaction="toggleitem" name="item_id" value="${item.id}">
                                    Undo
                                </button>
                            </td>
                        </tr>
                    </c:if>
                </c:forEach>
            </table>
        </form>
        
    </jsp:body>


    <jsp:body>

        <p>You should be logged in now</p>

        <c:if test="${sessionScope.user != null}">
            <p>You are logged in with the role of "${sessionScope.user.role}".</p>
        </c:if>

        <c:if test="${sessionScope.user == null}">
            <p>You are not logged in yet. You can do it here: <a
                    href="../login.jsp">Login</a></p>
        </c:if>

    </jsp:body>

</t:fogtemplate>