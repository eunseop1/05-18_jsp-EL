<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Locale"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- 인코딩 지정 --%>
<fmt:requestEncoding value="UTF-8"/>
<%-- 로케일 지정 -> 현재 지역이 한국이기에 한국이 기본설정으로 나온다
사진을 누르면 href를 통해 ko,ja,zh,en로 그 나라 코드를 찾아서 넘겨준다--%>
<fmt:setLocale value="${param.lo }"/>
<%-- 변수들이 저장되어있는 프로퍼티 파일의 이름을 지정한다. 
message.프로퍼티를 찾는다--%>
<fmt:setBundle basename="message"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL(JSP Standard Tag Library)</title>
<script type="text/javascript">

</script>
<style type="text/css">

</style>
</head>
<body>
<%-- 페이지는 그대로 두고 프로퍼티만 그나라 언어에 맞게 바꿔서 보여준다 
이것이 국제화 기능이다
이것을 모른다면 각페이지 마다 따로 만들어서 일일히 번역하여야 하는 번거로움이 생긴다--%>
<%--
	<a href="?lo=ko_KR"><img src="${pageContext.request.contextPath }/images/flag_099.jpg"/></a>
	<a href="?lo=ja_JP"><img src="${pageContext.request.contextPath }/images/flag_093.jpg"/></a>
	<a href="?lo=zh_CN"><img src="${pageContext.request.contextPath }/images/flag_039.jpg"/></a>
	<a href="?lo=en_US"><img src="${pageContext.request.contextPath }/images/flag_199.jpg"/></a>
 --%>
 
 	<a href="?lo=ko"><img src="${pageContext.request.contextPath }/images/flag_099.jpg"/></a>
	<a href="?lo=ja"><img src="${pageContext.request.contextPath }/images/flag_093.jpg"/></a>
	<a href="?lo=zh"><img src="${pageContext.request.contextPath }/images/flag_039.jpg"/></a>
	<a href="?lo=en"><img src="${pageContext.request.contextPath }/images/flag_199.jpg"/></a>
 
	<br /><hr />
	<fmt:message key="TITLE"/> <br /> <%-- 출력 --%>
	<fmt:message key="GREETING"/> <br />
	<fmt:message key="BODY"/> <br />
	<fmt:message key="COMPANY_NAME"/> <br />
	<fmt:message key="COMPANY_NAME" var="name"/> <br /> <%-- var를 쓰면 변수에 저장 --%>
	<hr />
	${name }
</body>
</html>