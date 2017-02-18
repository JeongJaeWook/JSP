<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
    3번째
날짜:2017년 2 월 16 일
주제: err page
-->
<html>
<head>
<meta charset="UTF-8">
<title>title here</title>
</head>
<body>
	허걱! 에러발생!
	<br>
	<b style="font-size: 50px; color: red;">허걱 에러 발생!!!</b>
	<br>
	<%=exception.getMessage()%>
</body>
</html>