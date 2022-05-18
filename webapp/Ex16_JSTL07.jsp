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
	<%-- c:url : URL주소를 만들어준다. 문자열이 자동으로 인코딩 된다--%>
	
	<c:url var="url" value="https://search.naver.com/search.naver">
		<c:param name="query" value="JSP"></c:param>
		<c:param name="query" value="한글"></c:param>
	</c:url>
	<hr/>
	${url } <br/>
	<hr/>
	<a href="${url }">네이버 검색하기</a>
	
</body>
</html>