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
	<%-- 숫자를 원하는 형식으로 출력해보자 --%>
	<c:set var="n" value="123456789.56789"/>
	
	${n }<br/>
	
	<fmt:formatNumber value="${n }"/> <br/>
	<%-- 천단위마다 콤마를 붙여준다 --%>
	<fmt:formatNumber value="${n }" groupingUsed="true"/> <br/>
	<%-- 기본적으로는 트루형태이다 --%>
	<fmt:formatNumber value="${n }" groupingUsed="false"/> <br/>

	<%-- 원하는 형식으로 찍어보자 --%>
	<%-- 소수점 2째자리만 --%>
	<fmt:formatNumber value="${n }" pattern="0.00"/> <br/>
	<%-- 천의 자리에서 콤마 --%>
	<fmt:formatNumber value="${n }" pattern="0,000.000"/> <br/>
	
	<%--0과 #의 차이? -> 0은 반드시 그 자리수까지 출력해라! --%>
	<fmt:formatNumber value="${n }" pattern="#.##"/> <br/>
	<fmt:formatNumber value="${n }" pattern="#,###.###"/> <br/>
	
	<%--
	12.4
0,012.400
	 --%>
	<fmt:formatNumber value="12.4" pattern="#,###.###"/> <br/>
	<fmt:formatNumber value="12.4" pattern="0,000.000"/> <br/>
	
	<%-- 화폐단위 출력 --%>
	<fmt:formatNumber value="7689876" type="currency"/> <br/> <%-- 원 으로 출력된다 --%>
	<fmt:formatNumber value="7689876" type="currency" currencySymbol="$"/> <br/> <%-- 달러 로 출력된다 --%>
	<fmt:formatNumber value="7689876" type="currency" currencySymbol="$" var="pay"/> <br/> <%-- 달러 로 출력된다 --%>
	${pay }
	
	
</body>
</html>