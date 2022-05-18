# 05-18_jsp-EL
Ex01_El
사용자 정의 태그를 라이브러리로 불러와서 사용하기

Ex02_El
태그 라이브러리를 통해 만든 변수가 이름이 겹치면 제일 범위가 작은 애를 부른다

Ex03_ElParam
< 와 >, == 등의 기호들은 태그로 인식될 염려가 있기에 eq,ne,ge,gt,le,lt 같은 영어 문자로 표시해보자

Ex04_ElParamValue
param.n과 param.m이 배열로 취급된다

Ex05_ElHeader
El없이 쓸때와 El을 가지고 사용할때의 편리함 차이

Ex06_ElInitParam 과 Ex07_ElPageContext
초기화 파라메터 읽기와 PageContext를 통해서 get생략하고 불러오기

Ex08_ELCollection
El에서 배열 다루기 -> El은 getter를 만들어준다

Ex09_ELTLD
정적 메서드를 El로 사용하기

Ex10_JSTL01
c:set set은 변수를 선언하거나 변수의 값을 변경할때 사용
c:remove remove 태그는 변수를 제거
scope를 안쓰면 해당 값을 가지는 모근 영역의 변수들도 제거

Ex11_JSTL02
c:if 조건을 판단할때 사용 그런데 else가 없다
c:choose 기존의 switch문처럼 사용

Ex11_JSTL03
c:forEach 마치 for문처럼 사용
자바와는 다르게 반복횟수와 인덱스를 알아낼 수 있다
count 는 몇번째 반복인지(실행횟수), index는 배열의 몇번째 인지(아이템 순서)

Ex12_JSTL04
예외처리 (try catch를 쓸수 없기에 catch쓰고 if를 쓴다)
c:catch
c:if
EL에서 정수 연산시 실수의 결과가 나온다. 
아래의 식은 예외가 아니라 결과가 infinity라고 나온다

정수 실수 구분을 못하기에 무한대가 나온다 
값을 제대로 보려면 <% %>를 써야 한다


Ex13_JSTL05
c:redirect 페이지 이동

Ex14_View
param으로 문자찍기 
주소표시줄 뒤에 ?n=12&m=34&name=한사람 를 붙여 실행해보라

Ex15_JSTL06
c:import 다른 페이지에서의 실행결과를 내 페이지에 포함

Ex16_JSTL07
c:url 문자열이 자동 인코딩되어 URL주소를 만들어준다

Ex17_JSTL08
c:out 값을 인코딩하여 출력한다(이때 태그가 무시된다)

Ex18_JSTL09
fmt:formatDate 타입, 스타일, 패턴을 날짜 포맷으로 변수에 저장

Ex19_JSTL10
fmt:formatNumber
pattern="0.00" 과 pattern="#.##"의 차이? -> 0은 반드시 그 자리수를 출력한다
type="currency"로 돈이라고 인식시킬수 있고 currencySymbol="$"로 달러 표시로 출력가능

Ex20_JSTL11
TimeZone value="해당 국가"  -> 국가 코드만 바꿔주면 해당하는 국가의 시간대로 변경한다
TimeZone.getAvailableIDs() 세계의 모든 시간대를 가져온다(시간대를 다르게 쓰는 다양한 국가 목록)

Ex21_JSTL12
fmt:setLocale value="ko_KR" -> 앞의 ko는 언어코드, 뒤의 KR은 국가코드

Ex22_JSTL13
Ex20과 Ex21과 동일

Ex23_JSTL14
fmt:timeZone : 태그 안에서만 유효
fmt:setTimeZone : 선언 이후 유효

Ex24_JSTL15
Ex22의 설명과 동일

Ex25_JSTL16
fmt:setLocale value="${param.lo }" // Locale 지정 -> 사진을 누르면 href를 통해 ko,ja,zh,en로 그 나라의 언어 코드를 넘겨준다
fmt:setBundle basename="message" // 이름이 일치하는 message프로퍼티를 src\main\resoureces에서 찾는다
페이지는 그대로 두고 프로퍼티만 그나라 언어에 맞게 바꿔서 보여준다 
이것이 국제화 기능이다
이것을 모른다면 각페이지 마다 따로 만들어서 일일히 번역하여야 하는 번거로움이 생긴다
<a href="?lo=ko"><img src="${pageContext.request.contextPath }/images/flag_099.jpg"/></a>
