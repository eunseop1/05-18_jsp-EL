<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- JSTL을 사용하려면 태그라이브러리 디렉티브를 써야 한다 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int sum = 0;
		for(int i=1;i<=100;i++) sum += i;
		request.setAttribute("sum", sum);//이게 주석처리 되면 해당 내용이 저장되지 않아서 ${sum}에 들어가지 않는다
		
		String name = "한사람";
		request.setAttribute("name", name);
		pageContext.setAttribute("age", 5);
		request.setAttribute("age", 10);
		session.setAttribute("age", 20);
		application.setAttribute("age", 30);
	%>
	${age } 세 ${pageScope.age } 세 ${requestScope.age } 세 ${sessionScope.age } 세 ${applicationScope.age } 세 
	<%-- 이름이 겹치면 영역별로 지정해서 출력하면 좋다. 겹칠때 그냥 부르면 제일 작은 애를 부른다 --%>
	<h1>1~100까지의 합: ${sum }</h1>
	<h2>name: <%= name %></h2> <%-- null이어도 찍어준다 --%>
	<h2>name: ${name }</h2> <%--값이 null이면 아예 직지도 않는다 --%>
</body>
</html>