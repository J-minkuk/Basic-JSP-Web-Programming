# JSP 웹 프로그래밍 기초
JSP 같은 동적 웹 페이지는 클라이언트가 어떤 문서를 요청했을 때,
 해당 웹 페이지는 'JSP 컨테이너'를 거쳐 새롭게 해석된 후,
 HTML 태그로 바꿔 전송한다. 이런 처리를 통해 사용자들은 각각 다른 출력 결과를 볼 수 있다.
 
## 서버로 데이터를 전달하는 방법
### GET
* 웹 브라우저의 URL 창에 파라미터의 정보를 담아 전송하는 방식
* 보안에 취약하며 정보의 크기가 1024로 제한

### POST
* 정보의 크기에 제한 없이 전송 가능
* URL 주소창에 전송하려는 데이터의 정보가 없으므로 보안성에 좋음

---

## Wiki
* [JSP 페이지의 구성 요소](https://github.com/MinGOODdev/Web-Programming-Base/wiki/JSP-%ED%8E%98%EC%9D%B4%EC%A7%80%EC%9D%98-%EA%B5%AC%EC%84%B1-%EC%9A%94%EC%86%8C)
* [Java Beans](https://github.com/MinGOODdev/Web-Programming-Base/wiki/JavaBeans)
* [Cookie](https://github.com/MinGOODdev/Web-Programming-Base/wiki/Cookie)

---

## 세션 (Session)
* 웹 컨테이너에서 클라이언트의 정보를 보관할 때 사용
* 오직 서버에서만 생성
* 하나의 웹 브라우저(클라이언트)마다 하나의 세션이 생성

### session 기본 객체
세션을 사용한다는 것은 session 기본 객체를 사용한다는 것을 의미

메소드 | 리턴 타입 | 설명
-------|-----------|------
getId() | String | 세션의 고유 ID를 구한다.(세션 ID라고 한다.)
getCreationTime() | long | 세션이 생성된 시간을 구한다. (단위는 1/1000 초)
getLastAccessedTime() | long | 웹 브라우저가 가장 마지막에 세션에 접근한 시간을 구한다. (단위는 1/1000 초)

* 웹 서버는 웹 브라우저에 세션 ID를 전송한다.
* 웹 브라우저는 웹 서버에 연결할 때마다 세션 ID를 보내서 웹 서버가 어떤 세션을 사용할 지 판단할 수 있게 한다.

### 세션 종료/타임 아웃
* session.invalidate()을 사용해서 세션 종료
    * 세션이 종료되면 기존에 생성된 세션이 삭제 
    * 이후 접근 시 새로운 세션이 생성 됨
* 마지막 세션 사용 이후 유효 시간이 지나면 자동 종료

### request.getSession()을 이용한 세션 생성
request.getSession()을 이용해서 세션을 구하므로, page 디렉티이브의 session 속성값은 false 로 지정한다.
```el
<%@ page session="false" %>
<%
    HTTPSession httpSession = requeset.getSession();
    List list = (List)HttpSession.getAttribute("list");
    list.add(productId);
%>
```
* request.getSession() 메소드는 session 이 존재하면 해당 session 을 리턴하고,
 존재하지 않으면 새롭게 session 을 생성해서 리턴한다.
* session 이 생성된 경우에만 session 객체를 구하고 싶다면, getSession() 메소드에 false 를 인자로 전달하면 된다.

### session 기본 객체에 저장될 값 타입
* 필요한 값을 개별 속성으로 저장하는 것보다는 속성을 하나로 묶은 자바 클래스를 작성하여 저장하는 것이 유지 보수에 편리

---

## EL (Expression Language)
표현 언어의 기능
* JSP 의 4가지 기본 객체가 제공하는 영역의 속성 사용
* 수치 연산, 논리 연산, 관계 연산자 제공
* 자바 클래스 메소드 호출 기능 제공
* 쿠키, 기본 객체의 속성 등 JSP 를 위한 표현 언어의 기본 객체 제공
* 람다식을 이용한 함수 정의와 실행 (EL 3.0)
* Stream API 를 통한 Collection 처리 (EL 3.0)
* 정적 메소드 실행 (EL 3.0)

### 표현 언어의 예
```el
<%-- 표현식 --%>
<%= member.getAddress().getZipCode() %>

<%-- 표현 언어 --%>
${member.address.zipcode}
```
### EL 의 구성
* $ 와 괄호('{' 와 '}') 그리고 표현식을 사용하여 값을 표현한다.
```
<jsp:include page="/module/${skin.id}/header.jsp" flush="true" />
<b>${sessionScope.member.id}</b> 님 환영합니다.
```

* JSP 2.1 버전부터는 ${expr} 형식뿐만 아니라 #{expr} 구문을 새롭게 지원한다.
* 둘의 큰 차이점은 실제로 EL 의 값을 언제 생서하느냐에 있다.
    * ```${expr}``` 형식의 EL 은 ${expr} 구문을 분석할 때 곧바로 값을 계산한다.
    * ```#{expr}``` 형식의 EL 은 실제로 값이 사용될 때 계산한다.

```el
<%
    Member m = new Member();
    m.setName("이름1");
%>
<c:set var="m" value="<%= m %>"/>
<c:set var="name" value="${m.name}"/> <%-- 이 시점에 값 계산 --%>
<c:set var="name" value="#{m.name}"/> <%-- 이 시점에는 값 생성을 하지 않음 --%>
<% m.setName("이름2"); %>
${name} <%-- name 의 값은 "이름1" --%>
```
* ```#{expr}``` 형식의 EL 은 실제로 값이 필요할 때 계산을 수행하기 때문에 Deffered Expression 이라고 부른다.
    * 아무데나 쓸 수는 없고 이를 허용하는 태그의 속성에만 위치할 수 있다.
    
### EL 기초
* EL 은 일종의 스크립트 언어로 자료 타입, 수치 연산자, 논리 연산자, 비교 연산자 등을 제공한다.
* EL 의 데이터 타입
    * Boolean 타입
    * 정수 타입: java.lang.Long 타입
    * 실수 타입: java.lang.Double 타입
    * 문자열 타입: java.lang.String 타입
    * 널 타입: null
* 정수, 실수, 문자열 타입 사이에서의 타입 변환은 정해진 규칙에 따라 자동으로 이루어진다.

### EL 의 기본 객체

기본 객체 | 설명
----------|-------
pageContext | JSP 의 page 기본 객체와 동일
pageScope | pageContext 기본 객체에 저장된 속성의 <속성, 값> 맵핑을 저장한 Map 객체
requestScope | request 기본 객체에 저장된 속성의 <속성, 값> 맵핑을 저장한 Map 객체
sessionScope | session 기본 객체에 저장된 속성의 <속성, 값> 맵핑을 저장한 Map 객체
applicationScope | application 기본 객체에 저장된 속성의 <속성, 값> 맵핑을 저장한 Map 객체
param | 요청 파라미터의 <파라미터 이름, 값> 맵핑을 저장한 Map 객체<br>request.getParameter("이름")의 결과와 동일
paramValues | 요청 파라미터의 <파라미터 이름, 값 배열> 맵핑을 저장한 Map 객체<br>request.getParameterValues("이름")의 결과와 동일
header | 요청 정보의 <헤더 이름, 값> 맵핑을 저장한 Map 객체<br>request.getHeader("이름")의 결과와 동일
headerValues | 요청 정보의 <헤더 이름, 값 배열> 맵핑을 저장한 Map 객체<br>request.getHeaders("이름")의 결과와 동일
cookie | <쿠키 이름, Cookie> 맵핑을 저장한 Map 객체<br>request.getCookies()로 구한 Cookie 배열로부터 맵핑을 생성한다.
initParam | 초기화 파라미터의 <이름, 값> 맵핑을 저장한 Map 객체<br>application.getInitParameter("이름")의 결과와 동일

### 객체 접근
${cookie.ID.value}
* 표현 언어의 cookie 기본 객체는 <쿠키 이름, Cookie 객체> 맵이기 때문에 cookie.ID 는 이름이 ID 인 Cookie 객체를 리턴<br>
따라서 cookie.ID.value 가 출력하는 값은 이름이 ID 인 Cookie 객체의 getValue() 메소드가 리턴한 값이 된다.
* EL 언어는 객체에 저장된 값에 접근할 때 점(.)이나 대괄호([])를 사용한다.
```
cookie.name 또는 cookie['name']
```

### ${cookie.ID.value} 분석
* cookie 는 EL 이 제공하는 기본 객체로 타입은 Map 이다.
* cookie.ID 의 값을 구할 때는 cookie.containsKey("ID")의 존재 여부를 확인한 후, 존재할 경우 cookie.get("ID")를 리턴
* cookie.get("ID")가 리턴하는 객체는 Cookie 객체이므로 cookie.ID.value 는 다른 객체이기 때문에
 value 를 문자열로 변환한 후, cookie.ID 객체에 읽기 가능한 value 프로퍼티가 있는지 조사한다.
* cookie.ID 는 Cookie 클래스의 객체이고 Cookie 클래스는 getValue() 메소드를 제공하므로 읽기 가능한 value 프로퍼티가 존재한다.
 따라서 이름이 ID 인 쿠키의 값을 리턴한다.
 
### 객체 탐색
* EL 에서 PAGE, REQUEST, SESSION, APPLICATION 영역에 저장된 속성에 접근할 때는
 pageScope, requestScope, sessionScope, applicationScope 기본 객체를 사용
```el
PAGE 영역에 저장되어 있는 NAME 이라는 속성을 참고
${pageScope.NAME}
```

EL 기본 객체를 사용하지 않고 이름만 지정하는 경우
```el
${name}
```
* 이 EL 요소는 PAGE, REQUEST, SESSION, APPLICATION 영역을 차례대로 검사해서 이름이 name 인 속성이 존재하는지 확인하고
 존재하는 경우 그 속성의 값을 사용한다.
 
