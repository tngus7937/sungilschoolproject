<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy�� MM�� dd��");
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="EUC-KR">
		<title>Insert title here</title>
		<link rel = "stylesheet" type = "text/css" href = "../css/style.css">
	</head>
	<body>
		<footer id = footer>
			������ ��¥: [<%= sf.format(nowTime) %>]
		</footer>
	</body>
</html>