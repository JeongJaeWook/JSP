<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 
    1번째
날짜:2017년 2 월 16 일
주제: jsp 기초1
-->
<html>
<head>
<meta charset="UTF-8">
<title>title here</title>
</head>
<body>
	안녕하세요 jsp 문서 입니다.
	<br>
	<!-- html -->
	<!-- 
<%@ page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
%@ <- 이건 지시어(directive)

 -->
	<%
		//스크립트릿(scriptlet)
		//이 안에 변수들은 지역변수이다. 
		//jsp는 'service 메소드를 오버라이드 한 것'이기 때문에 '멤버 메소드'를 선언할 수 없다.

		int a = 10;
		int b = 20;
		int c = a + b;
		String ir = "박영권";
		out.print(ir + "님이 선언한 변수 c는 " + c);
	%>
	<hr>
	<%
		String ss = "이것이 JSP";
		out.println("out이라는 내장 객체를 사요해서 변수의 ss를 출력" + ss);
	%>
	<br>

	<!-- expression은 statement를 딱 하나만 쓸 수있다. 그래서 ;를 안씀(하나밖에 없기 때문에) -->
	<%="<br>표현식(expression)을 사용해 ss값 출력: " + ss%>
	<br>
	<%
		for (int i = 1; i < 7; i++) {
			out.print("<h" + i + ">");
			out.print("노로바이러스 주의보!");
			out.print("</h" + i + ">");
		}
	%>
	<hr>
	<%=new java.util.Date()%>
	<br>
	<%
		int aa = 1, sum = 0;
		do {
			aa++;
			sum += aa;
		} while (a < 10);
		out.print("10까지의 합은 " + sum);
	%>
	<%="10까지의 합은 " + sum%>
	<br>
	<%=//ir은 변수
					ir + "님의 전화번호는" + tel%>
	<%!//tel은 멤버 변수
	String tel = "111-111";%>


	<%!//Declaration//클래스 멤버의 메소드
	public int add(int m, int n) {
		return m + n;
	}%>
	<br>
	<%=add(10, 20)%>
</body>
</html>
