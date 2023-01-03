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
                <option value="470">470cm</option>
                <option value="780">780cm</option>
                <option value="1090">1090cm</option>
            </select>
            <select name="width">
                <option selected>Width</option>
                <option value="300">300cm</option>
                <option value="600">600cm</option>
                <option value="900">900cm</option>
                <option value="1200">1200cm</option>
            </select>
            <div class="form-check mt-3">
                <label class="form-check-label" for="checkbox">
                    <input class="form-check-input" type="checkbox" name="checkbox" id="checkbox">
                    Include Shed
                </label>
            </div>
            <button class="btn btn-primary" name="svg">Create Carport</button>
        </form>


    </jsp:body>

</t:fogtemplate>