# 웹 프로그래밍 기초

---

## JSP 페이지의 구성 요소
### 디렉티브 (Directive)
* page: JSP 페이지에 대한 정보를 지정한다. JSP 가 생성하는 문서의 타입, 출력, 버퍼의 크기, 에러 페이지 등 JSP 페이지에서
 필요로 하는 정보를 입력한다.
 
속성 | 기본값 | 설명
-----|--------|------
contentType | text/html | 문서의 타입 지정
import | | 자바 클래스를 지정
session | true | 세션 사용 여부를 지정
buffer | | 출력 버퍼의 크기 지정 "none"일 경우 출력 버퍼를 사용하지 않는다.
autoFlush | true | 출력 버퍼가 가득 찼을 경우, 자동으로 버퍼에 있는 데이터를 출력 스트림에 보내고 버퍼를 비울지 여부
info | | JSP 페이지에 대한 설명을 입력
errorPage | | 에러가 발생했을 때 보여줄 페이지를 지정
isErrorPage | false | 현재 페이지가 에러가 발생했을 때 보여지는 페이지인지 지정
pageEncoding | | JSP 페이지 자체의 Character 인코딩 지정
isELIgnored | false | 표현 언어를 지원할 지 여부
deferredSyntaxAllowedAsLiteral | false | #{ 문자가 문자열 값으로 사용되는 것을 허용할 지의 여부
trimDirectiveWhitespaces | false | 출력 결과에서 템플릿 텍스트의 공백 문자를 제거할 지 여부
 
 
* taglib: JSP 페이지에서 사용할 태그 라이브러리를 지정한다.
* include: JSP 페이지의 특정 영역에 다른 문서를 포함시킨다.

### 스크립트 요소
JSP 에서 실시간으로 문서의 내용을 생성하기 위해 사용되는 것
* 표현식 (Expression): 값을 출력한다.
    * ```<%= 값 %>```
* 스크립트릿 (Scriptlet): 자바 코드를 실행한다.
    * ```<% 자바 코드 %>```
* 선언부 (Declaration): 자바 메소드를 만든다.
    * ```<%! 자바 코드 %>```

### 기본 객체 (Implicit Object)
기본 객체 | 실제 타입 | 설명
----------|-----------|-------
request | javax.servlet.http.HttpServletRequest | 클라이언트의 요청 정보를 저장
response | javax.servlet.http.HttpServletResponse | 응답 정보 저장
pageContext | javax.servlet.jsp.PageContext | JSP 페이지에 대한 정보를 저장
session | javax.servlet.http.HttpSession | HTTP 세션 정보를 저장
application | javax.servlet.ServletContext | 웹 어플리케이션에 대한 정보를 저장
out | javax.servlet.jsp.JspWriter | JSP 페이지가 생성하는 결과를 출력할 때 사용되는 출력 스트림
config | javax.servlet.ServletConfig | JSP 페이지에 대한 설정 정보를 저장
page | java.lang.Object | JSP 페이지를 구현한 자바 클래스 인스턴스
exception | java.lang.Throwable | Exception 객체, Error Page 에서만 사용

### request
클라이언트 정보 및 서버 정보 읽기

메소드 | 반환형 | 설명
-------|--------|-------
getRemoteAddr() | String | 웹 서버에 연결한 클라이언트의 IP 주소
getContentLength() | Long | 클라이언트가 전송한 요청 정보의 길이
getCharacterEncoding() | String | 클라이언트가 요청 정보를 전송할 때 사용한 Character Encoding
getContentType() | String | 클라이언트가 요청 정보를 전송할 때 사용한 ContentType
getProtocol() | String | 클라이언트가 요청한 프로토콜
getMethod() | String | 웹 브라우저가 정보를 전송할 때 사용한 방식
getRequestURI() | String | 웹 브라우저가 요청한 URL 에서 경로
getContextPath() | String | JSP 페이지가 속한 웹 어플리케이션의 Context 경로
getServerName() | String | 연결할 때 사용한 서버 이름
getServerPort() | Int | 서버가 실행 중인 포트 번호

HTML 폼, 요청 파라미터 처리

메소드 | 반환형 | 설명
-------|--------|-------
getParameter(String arg0) | String | 이름이 arg0 인 파라미터의 값 (없을 경우 null 리턴)
getParameterValues(String arg0) | String[] | 이름이 arg0 인 파라미터의 값을 배열로 리턴 (없을 경우 null 리턴)
getParameterNames() | Enumeration | 웹 브라우저가 전송한 파라미터의 이름
getParameterMap() | Map | 웹 브라우저가 전송한 파라미터의 맵

요청 헤더 정보의 처리

메소드 | 반환형 | 설명
-------|--------|-------
getHeader(String name) | String | 지정한 이름의 헤더 값
getHeaders(String name) | Enumeration | 지정한 이름의 헤더 목록
getHeaderNames() | Enumeration | 모든 헤더의 이름
getIntHeader(String name) | Int | 지정한 헤더의 값을 정수 값으로 읽음
getDateHeader(String name) | Long | 지정한 헤더의 값을 시간 값으로 읽음

### response

메소드 | 반환형 | 설명
-------|--------|-------
addDateHeader(String name, long date) | void | name 헤더에 date 를 추가
addHeader(String name, String value) | void | name 헤더에 value 를 값으로 추가
addIntHeader(String name, int value) | void | name 헤더에 정수 값 value 를 추가
setDateHeader(String name, long date) | void | name 헤더의 값을 date 로 지정
setHeader(String name, String value) | void | name 헤더의 값을 value 로 지정
setIntHeader(String name, int value) | void | name 헤더의 값을 정수 값 value 로 지정
containsHeader(String name) | boolean | 이름이 name 인 헤더를 포함하고 있는지 true, false 로 리턴

### out

메소드 | 반환형 | 설명
-------|--------|-------
print() | void | 데이터 출력
println() | void | 데이터를 출력하고 \r\n 또는 \n을 출력
newLine() | void | \r\n 또는 \n을 출력
getBufferSize() | int | 버퍼의 크기
getRemaining() | int | 현재 버퍼의 남은 크기
clear() | void | 버퍼의 내용을 비운다. 만약 버퍼가 이미 플러시 되었다면 IOException 을 발생시킨다.
clearBuffer() | void | 버퍼의 내용을 비운다. clear() 메소드와 달리 버퍼가 플러시 된 경우에도 IOException 을 발생시키지 않는다.
flush() | void | 버퍼를 플러시한다.
isAutoFlush() | boolean | 버퍼가 다 찼을 경우, 자동으로 플러시 할 경우 true 리턴

### pageContext

메소드 | 반환형 | 설명
-------|--------|-------
getRequest() | ServletRequest | request 기본 객체를 구한다.
getResponse() | ServletResponse | response 기본 객체를 구한다.
getSession() | HttpSession | session 기본 객체를 구한다.
getServletContext() | ServletContext | application 기본 객체를 구한다.
getServletConfig() | ServletConfig | config 기본 객체를 구한다.
getOut() | JspWriter | config 기본 객체를 구한다.
getException() | Exception | exception 기본 객체를 구한다.
getPage() | Object | page 기본 객체를 구한다.

### application

메소드 | 반환형 | 설명
-------|--------|-------
getInitParameter(String name) | String | 이름이 name 인 웹 어플리케이션 초기화 파라미터의 값을 읽는다. 존재하지 않을 경우 null 리턴
getInitParameterNames() | Enumeration | 웹 어플리케이션 초기화 파라미터의 이름 목록 리턴
getServerInfo() | String | 서버 정보
getMajorVersion() | String | 서버가 지원하는 서블릿 규약의 메이저 버전의 정수 부분 리턴
getMinorVersion() | String | 서버가 지원하는 서블릿 규약의 마이너 버전의 소수 부분 리턴
log(String msg) | void | 로그 메시지 msg 를 기록
log(String msg, Throwable throwable) | void | 로그 메시지 msg 와 Exception 정보를 함께 기록
getRealPath(String path) | String | 웹 어플리케이션 내 지정한 경로에 해당하는 자원의, 시스템 상에서의 자원 경로 리턴
getResource(String path) | URL | 웹 어플리케이션 내 지정한 경로에 해당하는 자원에 접근할 수 있는 URL 객체 반환
getResourceAsStream(String path) | InputStream | 웹 어플리케이션 내 지정한 경로에 해당하는 자원으로부터 데이터를 읽어올 수 있는 InputStream 리턴

### session

### 표현 언어 (Expression Language)
* JSP 페이지 내부에서 사용되는 간단한 스크립트 언어
* 스크립트릿과 표현식 대신, 쉽고 간단하게 사용 가능

### 표준 액션 태그, 태그 라이브러리
* ```<jsp:액션태그이름>```
* 액션 태그는 XML 의 태그와 같은 모양을 취하고, JSP 페이지에서 특별한 기능을 제공
* 커스텀 태그는 액션 태그와 마찬가지로 태그 형태로 기능을 제공 (개발자가 직접 개발)
* 커스텀 태그는 JSP 코드에서 중복되는 것을 모듈화하거나 스크립트 코드를 사용할 때 소스 코드의 복잡함을 없애기 위해 사용
* 커스텀 태그 중 자주 사용되는 것을 별도로 표준화한 JSTL(JavaServerPages Standard Tag Library) 이 있다. 

---

## JSP 실행(처리) 과정
* 변환 (translation) 단계: JSP -> 자바 코드
* 컴파일 (compile) 단계: 자바 코드 -> 서블릿 클래스
* JSP 에 해당하는 서블릿이 존재하지 않을 경우, 변환 단계와 컴파일 단계를 거쳐 클라이언트의 요청을 처리
* JSP 에 해당하는 서블릿이 존재할 경우, 곧바로 서블릿을 사용하여 클라이언트의 요청을 처리

---

## JSP 기본(내장) 객체 영역과 속성
웹 어플리케이션은 4가지 영역을 갖는다.
* Page 영역: 하나의 JSP 페이지를 처리할 때 사용되는 영역
* Request 영역: 하나의 HTTP 요청을 처리할 때 사용되는 영역 (처리하는데 사용되는 모든 JSP 페이지)
* Session 영역: 하나의 웹 브라우저와 관련된 영역
* Application 영역: 하나의 웹 어플리케이션과 관련된 영역 (모든 JSP 페이지, 모든 요청, 모든 브라우저 세션)

각 영역은 관련된 기본 객체를 갖고 있다.
* Page 영역: pageContext 기본 객체
* Request 영역: request 기본 객체
* session 영역: session 기본 객체
* application 영역: application 기본 객체

---