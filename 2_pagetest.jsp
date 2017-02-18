<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.Calendar, java.sql.*"
	session="true" buffer="8kb" info="jsp 문서정보 기술" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--
    2번째
날짜:2017년  2월  16일
주제:  jsp 기초2
-->
<html>
<head>
<meta charset="UTF-8">
<title>페이지 지시어</title>
</head>
<body>
	페이지 지시어는 jsp 문서의 최상단에 기술
	<br>
	<b>날짜 및 시간 출력</b>
	<br>
	<%
		Calendar cal = Calendar.getInstance();
		int y = cal.get(Calendar.YEAR);
		int m = cal.get(Calendar.MONTH) + 1;
		int d = cal.get(Calendar.DATE);
		out.println("오늘은" + y + "년" + m + "월" + d + "일");
	%>
	<br>
	<%="info 정보: " + this.getServletInfo()%>
	<br>
	<%="연산결과:" + (10 / 0)%>
</body>
</html>