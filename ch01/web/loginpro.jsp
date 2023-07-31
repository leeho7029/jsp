<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2023-07-28
  Time: 오후 2:43
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>보내온 결과</title>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <%
        String id = request.getParameter("id");
        String pw = request.getParameter("pw");
        int qw = 2; // 안 들어올 때를 대비하여 초기화 필요
        if(request.getParameter("qty") != null){
            qw = Integer.parseInt(request.getParameter("qty"));
        }
        int price = 1000; // null처리 하지 않으면 500번 내부 서버 오류 발생
        if(request.getParameter("price")!= null){
            qw = Integer.parseInt(request.getParameter("price"));
        }
    %>

<%--   if(!request.getParameter("qty").equals("")){
            qty = Integer.parseInt(request.getParameter("qty"));}
        int price = 5000;
        if(!request.getParameter("price").equals("")){
            price = Integer.parseInt(request.getParameter("price"));}
        //값이 돌아오지 않을 것을 대비하여 int는 null 처리를 해줘야한다.  --%>
</head>
<body>
<div id="container">
    <ul class="lst">
        <li><span>아이디 : </span><%=id%></li>
        <li><span>비밀번호 : </span><%=pw%></li>
        <li><span>금액 : </span><%=qty*price%></li>
    </ul>
</div>
</body>
</html>