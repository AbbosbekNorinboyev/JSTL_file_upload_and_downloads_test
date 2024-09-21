<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>FMT Example</title>
    <link rel="stylesheet" href="/resources/css/css.css"/>
</head>
<body>
<c:set var="number" value="${20000 div 3}"/>
<h1>Number = ${number} </h1>

<f:formatNumber var="format" value="${number}" type="currency"/>
<h1>Number format currency = ${format}</h1>

<f:formatNumber var="num1" value="${number}" type="number"/>
<h1>Number format num1 = ${num1}</h1>

<f:formatNumber var="num2" value="${number}" type="number" maxFractionDigits="10"/>
<h1>Number format num2 = ${num2}</h1>

<hr/>
<c:set var="now" value="<%= new Date() %>"/>
<f:formatDate value="${now}" var="both" type="both"/>
<h1>defaultNow1 both: ${both}</h1>

<f:formatDate value="${now}" var="date" type="date"/>
<h1>defaultNow2 date : ${date}</h1>

<f:formatDate value="${now}" var="time" type="time"/>
<h1>defaultNow3 time : ${time}</h1>

<f:formatDate value="${now}" var="defaultNow4" pattern="dd/MM/yyyy"/>
<h1>defaultNow4 : ${defaultNow4}</h1>

<f:formatDate value="${now}" var="defaultNow5" pattern="MM/dd/yyyy"/>
<h1>defaultNow5 : ${defaultNow5}</h1>

<f:formatDate value="${now}" var="defaultNow6" pattern="yyyy/MM/dd"/>
<h1>defaultNow6 : ${defaultNow6}</h1>

<hr/>
<f:setLocale value="en"/>
<f:setBundle basename="meesages" var="local"/>
<f:message key="hello" bundle="${local}" var="hello_value"/>
<h1>${hello_value}</h1>
</body>
</html>
