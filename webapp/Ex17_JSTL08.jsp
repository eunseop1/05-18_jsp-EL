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
	<%-- c:out : 값을 인코딩해서 출력한다 -> 태그가 무시된다 --%>
	<c:set var="str" value="나의 이름은 <u><i><b>홍길동</b></i></u>"/>
	${str } <br />
	
	<c:out value="${str }"/> <br/>
	<c:out value="${str }" escapeXml="true"/> <br/>
	<%-- 위의 두개는 태그가 적용되지 않고 태그가 문자열로 출력된다 --%>
	
	<c:out value="${str }" escapeXml="false"/><br/>
	
</body>
</html>