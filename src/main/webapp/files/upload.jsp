<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Upload File Example</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/css.css"/>
</head>
<body>

<form enctype="multipart/form-data" method="post">
    <div class="mb-3">
        <label for="file" class="form-label">Upload File</label>
        <br>
        <input type="file" name="file" id="file" class="form-control"/>
    </div>
    <button type="submit" class="btn btn-success">Upload</button>
</form>
</body>
</html>
