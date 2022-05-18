<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>s
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- set은 변수를 선언허거나 변수의 값을 변경할때 사용 --%>
	<c:set var="sum" value="0"/>
	<c:forEach var="i" begin="1" end="100" step="2">
		<c:set var="sum" value="${sum + i }"/>
	</c:forEach>
	1~100까지 홀수 합 : ${sum } <br />
	
	<c:set var="name" value="페이지영역" scope="page"/>
	<c:set var="name" value="request영역" scope="request"/>
	<c:set var="name" value="session영역" scope="session"/>
	<c:set var="name" value="application영역" scope="application"/>
	
	${name } <br />
	${pageScope.name } <br />
	${requestScope.name } <br />
	${sessionScope.name } <br />
	${applicationScope.name } <br />
	<hr />
	<%-- remove 태그는 변수를 제거한다. --%>
	<c:remove var="name" scope="session"/>  <%-- session 영역의 name변수 제거 --%>
	${name } <br />
	${pageScope.name } <br />
	${requestScope.name } <br />
	${sessionScope.name } <br />
	${applicationScope.name } <br />
	<hr />	
	<c:remove var="name"/> <%-- 모든 영역의 name변수 제거 --%>
<%-- scope를 안쓰면 어떻게 될까? -> 해당 name이라는 값을 가진 모든 영역의 변수들이 다 지워진다 --%>	
	${name } <br />
	${pageScope.name } <br />
	${requestScope.name } <br />
	${sessionScope.name } <br />
	${applicationScope.name } <br />

</body>
</html>