<%@ page import="java.util.UUID" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>JSTL Core Tags Example</title>
</head>
<body>
<c:set var="uuid" value="<%= UUID.randomUUID().toString()%>"/>
<c:out value="${uuid}"></c:out>
<%--<c:redirect url="https://kun.uz"/>--%>

<c:forEach begin="1" end="25" step="2" var="element">
    <li> Element : <c:out value="${element}"/></li>
</c:forEach>

<%--<c:forEach begin="1" end="100" step="3" var="x">--%>
<%--    <li>x = <c:out value="${x}"/></li>--%>
<%--</c:forEach>--%>

<c:if test="${40 eq 1600 div 40}" var="result">
    <a>
        Result(40 eq 1600 div 40) : <c:out value="${result}"/>
    </a>
</c:if>

<br>
<c:forEach begin="1" end="10" var="i">
    <c:if test="${i gt 5}" var="x">
        <a> Result : <c:out value="${x}"/></a>
        <br>
    </c:if>
</c:forEach>

<c:choose>
    <c:when test="${11 ge 17}">
        <a>11 17 dan katta yoki teng</a>
    </c:when>
    <c:when test="${111 gt 100}">
        <a>111 100 dan katta</a>
    </c:when>
    <c:otherwise>
        <a>Otherwise</a>
    </c:otherwise>
</c:choose>

<br>
<c:catch var="e">
    <% int x = 12 / 0; %>
</c:catch>
<c:if test="${e != null}">
    <a> Result : <c:out value="${e.message}"/> </a>
</c:if>
</body>
</html>
