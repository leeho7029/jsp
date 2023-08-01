<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>천재교육</title>
</head>
<body>
<%--메뉴 구성할때 무조건 div.container--%>
<div class="container">
    <h2>메인 페이지</h2>
    <nav class="nav">
        <ul class="list">
            <li><a href="test1.jsp?str=include">include 테스트</a></li>
            <li><a href="test1.jsp?str=forward">forward 테스트</a></li>
            <li><a href="test1.jsp">잘못된 테스트</a></li>
            <li><a href="test1.jsp?str=etc">etc 테스트</a></li>
            <li><a href="test2.jsp">자바 객체 테스트</a></li>
            <li><a href="">jsp scope 테스트</a></li>
        </ul>
    </nav>
</div>
</body>
</html>
