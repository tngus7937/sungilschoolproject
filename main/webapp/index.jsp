<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="org.jsoup.Jsoup" %>
<%@ page import="org.jsoup.nodes.Document" %>
<%@ page import="org.jsoup.nodes.Element" %>
<%@ page import="org.jsoup.select.Elements" %>
<!DOCTYPE html>

<html>
	<head>
	    <meta charset="UTF-8">
	    <title>Insert title here</title>
	    <link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	
	<body>
        <header id="header">
	        <jsp:include page="layout/header.jsp"></jsp:include>
	    </header>

	    <nav id="nav">
   		    <jsp:include page="layout/nav.jsp"></jsp:include>
    	</nav>
		
		<section>
		<img id = "sectionmain" src = "img/sungilpagemain.png">
		<div>
			<img id = "lunchtoday" src = "img/todaylunch.png">
	    <div id = "lunchsection">
			<% 
	Document doc = Jsoup.connect("https://sungil-h.goesn.kr/sungil-h/main.do").get();

	Elements posts = doc.body().getElementsByClass("meal_wrap");
	
	int i=0;
    for(Element e : posts.select("li:not(.align_center)")){
    	out.println(e.text());   
      	i++;
      	if(i==2){
        	out.println("<br>"); //마찬가지로 문자열을 다듬어주었다.
        	i=0;
      		}
     	}
%>
		</div>
		</div>
		</section>
	    <footer id="footer">
		    <jsp:include page="layout/footer.jsp"></jsp:include>
	    </footer>		
	</body>
</html>
