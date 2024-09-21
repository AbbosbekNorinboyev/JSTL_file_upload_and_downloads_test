<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Function Example</title>
</head>
<body>
<c:set var="fullname" value="Abbos Norinboyev"/>
<c:if test="${f:containsIgnoreCase(fullname, 'ab')}">
    <h1>${fullname} containsIgnoreCase "ABBOS"</h1>
</c:if>

<c:if test="${f:startsWith(fullname, 'Abbos')}">
    <h1>${fullname} startWith "Abbos"</h1>
</c:if>
</body>
</html>
