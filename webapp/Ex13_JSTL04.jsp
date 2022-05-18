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
<%-- 예외처리 --%>
	<c:catch var="e">
		<%=12/3 %>
	</c:catch>
	<hr/>
	
	<c:catch var="e">
		<%=10/3 %><br/>
		<%=12/0 %><br/>
	</c:catch>
<%-- try catch를 쓸수 없기에 catch쓰고 if를 쓴다 --%>
	
	<c:if test="${not empty e }">
		에러가 발생했습니다. ${e } : ${e.message }
	</c:if>
	<hr/>
	
	<c:catch var="e">
		12 / 0 = ${12/0 } <br/>
		10 / 3 = ${10/3 } <br/>
	</c:catch>
<%-- EL에서 정수 연산시 실수의 결과가 나온다. 
아래의 식은 예외가 아니라 결과가 infinity라고 나온다

정수 실수 구분을 못하기에 무한대가 나온다 
값을 제대로 보려면 <% %>를 써야 한다--%>
	<c:if test="${not empty e }">
		에러가 발생했습니다. ${e } : ${e.message }
	</c:if>


</body>
</html>