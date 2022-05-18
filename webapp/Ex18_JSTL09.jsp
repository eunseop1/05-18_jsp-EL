<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h2>format 태그</h2>
	<hr/>
	<%-- 날짜를 원하는 형식으로 출력해보자 --%>
	<jsp:useBean id="today" class="java.util.Date"></jsp:useBean>
	
	<%--
	Wed May 18 14:24:36 KST 2022
	2022. 5. 18.
	2022. 5. 18.
	오후 2:24:36
	2022. 5. 18. 오후 2:24:36
	--%>
	${today } <br/>
	<fmt:formatDate value="${today }"/> <br/>
	<fmt:formatDate value="${today }" type="date"/> <br/>
	<fmt:formatDate value="${today }" type="time"/> <br/>
	<fmt:formatDate value="${today }" type="both"/> <br/>
	<hr/>
	
	<%--
	2022년 5월 18일 수요일
	2022년 5월 18일
	2022. 5. 18.
	22. 5. 18.
	 --%>
	<fmt:formatDate value="${today }" type="date" dateStyle="full"/> <br/>
	<fmt:formatDate value="${today }" type="date" dateStyle="long"/> <br/>
	<fmt:formatDate value="${today }" type="date" dateStyle="medium"/> <br/>
	<fmt:formatDate value="${today }" type="date" dateStyle="short"/> <br/>
	<hr/>
	
	<fmt:formatDate value="${today }" type="time" timeStyle="full"/> <br/>
	<fmt:formatDate value="${today }" type="time" timeStyle="long"/> <br/>
	<fmt:formatDate value="${today }" type="time" timeStyle="medium"/> <br/>
	<fmt:formatDate value="${today }" type="time" timeStyle="short"/> <br/>
	<hr/>
	
	<fmt:formatDate value="${today }" type="both" dateStyle="short" timeStyle="short"/> <br/>
	<hr/>
	<%-- 내가 모양 지정해서 출력 --%>
	<fmt:formatDate value="${today }" pattern="MM-dd(E) hh:mm"/> <br/>
	<fmt:formatDate value="${today }" pattern="MM-dd(E) hh:mm" var="date"/> <br/> <%-- 날짜 포맷을 변수에 저장할수도 있다 --%>
	${date }
	<br/>
	
</body>
</html>