<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Download Example</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css">
</head>
<body>
<form method="post">
    <div class="mb-3">
        <label for="file" class="form-label">Download File</label>
        <br>
        <input id="file" type="text" name="file" class="form-control"/>
    </div>
    <button class="btn btn-success" type="submit">Download</button>
</form>
</body>
</html>
