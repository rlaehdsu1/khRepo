<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String x = request.getParameter("id");
		String y = request.getParameter("age");
	%>

	<h1><%= x %> 님의 나이는 <%= y %>살 입니다.</h1>
	
</body>
</html>




