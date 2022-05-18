<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- JSTL을 사용하려면 태그라이브러리 디렉티브를 써야 한다. --%>
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
	<h2>El에서 pageContext 객체를 이용하면 jsp기본 객체에 접근이 가능하다</h2>
	
	접속자 아이피: <%=request.getRemoteAddr() %><br/>
	접속자 아이피: ${ request.remoteAddr } <br/>
	접속자 아이피: ${ pageContext.request.remoteAddr }<br/>
	<%-- get을 지우고 소문자로만 적어도 불러온다. 중간의 값 빼고는 값이 잘 나온다 --%>
	
	컨텍스트 패스 : <%=request.getContextPath() %><br/>
	컨텍스트 패스 : ${pageContext.request.servletContext.contextPath }<br/>
	컨텍스트 패스 : ${pageContext.request.contextPath }<br/>
	<%-- 절대 경로를 보여준다 --%>
	
	
	
	
	
</body>
</html>