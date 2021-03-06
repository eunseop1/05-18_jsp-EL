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
<%-- if는 조건을 판단할때 사용 -> else가 없다--%>
	<c:if test="${empty param.age }">
		주소 표시줄 뒤에 ?age=45를 붙여서 실행해 보세요
	</c:if>
	<c:if test="${not empty param.age }">
		<c:if test="${param.age >= 20 }">
			성인이군 놀다가~
		</c:if>
		<c:if test="${param.age < 20 }">
			애들은 가라~
		</c:if>		
	</c:if>
	
	<jsp:useBean id="today" class="java.util.Date"/>
	현재 ${today.hours }시 <br/>
	
	<c:if test="${today.hours<11 }">
		아침입니다 <br/>
	</c:if>
	<c:if test="${today.hours>=11 and today.hours<=13}">
		점심입니다 <br/>
	</c:if>
	<c:if test="${today.hours>13 }">
		오후입니다 <br/>
	</c:if>
	
	<c:choose>
		<c:when test="${today.hours<11 }">
			아침입니다 <br/>
		</c:when>
		<c:when test="${today.hours>=11 and today.hours<=13}">
			점심입니다 <br/>
		</c:when>
		<c:otherwise>
			오후입니다 <br/>
		</c:otherwise>
	</c:choose>
	
</body>
</html>