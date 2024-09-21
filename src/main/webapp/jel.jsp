<%--
  Created by IntelliJ IDEA.
  User: norin
  Date: 12/21/2023
  Time: 11:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Jakarta Expression Language Example</title>
    <link rel="stylesheet" href="/resources/css/css.css"/>
</head>
<body>
<a>17 mod 10 : ${17 mod 10}</a>
<a>12 div 12 : ${12 div 12}</a>
<a>12 eq 144 / 12 : ${12 eq 144 / 12}</a>
<a>20 eq 20000 / 1000 : ${20 eq 20000 / 1000}</a>
<a>12 eq 1728 / 144 : ${12 eq 1728 div 144}</a>
<a>13 ge 12 : ${13 ge 12}</a>
<a>13 ge 13 : ${13 ge 13}</a>
<a>13 ge 14 : ${13 ge 14}</a>
<a>13 gt 11 : ${13 gt 11}</a>
<a>13 gt 12 : ${13 gt 12}</a>
<a>13 gt 13 : ${13 gt 13}</a>
<a>13 gt 14 : ${13 gt 14}</a>
<br>
<a>34 le 32 : ${34 le 32}</a>
<a>34 le 34 : ${34 le 34}</a>
<a>34 le 35 : ${34 le 35}</a>
<a>34 lt 32 : ${34 lt 32}</a>
<a>34 lt 34 : ${34 lt 34}</a>
<a>34 lt 35 : ${34 lt 35}</a>
<a>34 lt 36 : ${34 lt 36}</a>
<br>
<a>13 div 3 : ${13 div 3}</a>
<a>1 * 2 * 3 * 4 * 5 * 6 * 7 * 8 * 9 * 10 : ${1 * 2 * 3 * 4 * 5 * 6 * 7 * 8 * 9 * 10}</a>
</body>
</html>
