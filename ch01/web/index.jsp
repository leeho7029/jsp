<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2023-07-27
  Time: 오후 4:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
  private String name;
  public String getName(){return this.name;}
  public void setName(String name){
    this.name = name;
  }
%>
<!DOCTYPE html>
<html>
<head>
  <title>Index</title>
</head>
<body>
  <h2>천재교육</h2>
  <hr>
  <%
    setName("김일일");
    String addr = "일일동";

  %>
  <p>이름: <%=getName() %>;</p>
  <p>주소: <%=addr %></p>
  <a href="test01.jsp">테스트1</a>
  <br>
  <a href="test02.jsp">테스트2</a>
  <br>
  <a href="test03.jsp">테스트3</a>
  <a href="test04.jsp?msg=한시간">테스트4</a>

  <a href="test05.jsp">로그인 폼 - response</a>
</body>
</html>
