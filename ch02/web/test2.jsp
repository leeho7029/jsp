<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.*"%>
<%@ page import="dto.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<%--request.set--url에 담ㄴ는것%>
<%--request.setAttribute-일반객체 담는것--%>
<%
    //보내는 곳에서 담는 부분
    Student st1 = new Student();
    st1.setNo(1);
    st1.setName("ㄱㅇㅎ");
    st1.setKor(100);
    st1.setEng(70);
    st1.setMat(100);
    request.setAttribute("st1",st1);

    List<Student> st = new ArrayList<>();
    Student s = new Student();
    s.setNo(1);
    s.setName("김김");
    s.setKor(90);
    s.setEng(90);
    s.setMat(50);
    st.add(s);
    Student s2 = new Student();
    s2.setNo(2);
    s2.setName("이김");
    s2.setKor(100);
    s2.setEng(90);
    s2.setMat(80);
    st.add(s2);
    request.setAttribute("st",st);


    ArrayList<String> lst = new ArrayList<>();
    lst.add("박김");
    lst.add("최고");
    lst.add("고김");
    lst.add("정이");
    request.setAttribute("lst",lst);

    HashSet<String> set = new HashSet<>();
    set.add("이이");
    set.add("박이이");
    set.add("최이");
    set.add("김정");
    set.add("고최");
    set.add("사문");
    set.add("최이");
    request.setAttribute("set",set);

    HashMap<String,String> map = new HashMap<>();
    map.put("no","5");
    map.put("name","김홍");
    map.put("kor","70");
    map.put("eng","80");
    map.put("mat","40");
    request.setAttribute("map",map);//"map"이라는 이름으로 map데이터를 전달
    RequestDispatcher rd = request.getRequestDispatcher("test3.jsp");//보내질 곳 지정
    rd.forward(request, response);
    //response.sendRedirect("test3.jsp?map="+map); //사이트 이동

%>
<%
    //받는 곳에서 출력하는 부분
    out.println("<p>번호:"+st1.getNo()+"</p>");
%>
<p>이름 : <%=st1.getName() %></p>
<p>국어 : <%=st1.getKor() %></p>
<p>영어 : <%=st1.getEng() %></p>
<p>수학 : <%=st1.getMat() %></p>
<p>총점 : <%=st1.getKor()+st1.getEng()+st1.getMat() %></p>
<hr>
<div class="msg">
    <h2 class="title">자바의 객체 데이터를 전송합니다.</h2>
</div>
</body>
</html>
