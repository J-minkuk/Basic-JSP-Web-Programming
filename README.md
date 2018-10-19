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

## JSP 페이지의 구성 요소
### 디렉티브 (Directive)
* page: JSP 페이지에 대한 정보를 지정한다. JSP 가 생성하는 문서의 타입, 출력, 버퍼의 크기, 에러 페이지 등 JSP 페이지에서
 필요로 하는 정보를 입력한다.
 
속성 | 기본값 | 설명
-----|--------|------
contentType | text/html | 문서의 타입 지정
import | | 자바 클래스를 지정
session | true | 세션 사용 여부를 지정
buffer | | 출력 버퍼의 크기 지정 "none"일 경우 출력 버퍼를 사용하지 않는다. (최소크기 = "8kb")
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
**클라이언트 정보 및 서버 정보 읽기**

메소드 | 반환형 | 설명
-------|--------|-------
getRemoteAddr() | String | 웹 서버에 연결한 클라이언트의 IP 주소
getContentLength() | Long | 클라이언트가 전송한 요청 정보의 길이
getCharacterEncoding() | String | 클라이언트가 요청 정보를 전송할 때 사용한 Character Encoding
getContentType() | String | 클라이언트가 요청 정보를 전송할 때 사용한 ContentType
getProtocol() | String | 클라이언트가 요청한 프로토콜
getMethod() | String | 웹 브라우저가 정보를 전송할 때 사용한 방식
getRequestURL() | String | 웹 브라우저가 요청한 URL 에서 경로
getContextPath() | String | JSP 페이지가 속한 웹 어플리케이션의 Context 경로
getServerName() | String | 연결할 때 사용한 서버 이름
getServerPort() | Int | 서버가 실행 중인 포트 번호

**HTML 폼, 요청 파라미터 처리**

메소드 | 반환형 | 설명
-------|--------|-------
getParameter(String arg0) | String | 이름이 arg0 인 파라미터의 값 (없을 경우 null 리턴)
getParameterValues(String arg0) | String[] | 이름이 arg0 인 파라미터의 값을 배열로 리턴 (없을 경우 null 리턴)
getParameterNames() | Enumeration | 웹 브라우저가 전송한 파라미터의 이름
getParameterMap() | Map | 웹 브라우저가 전송한 파라미터의 맵

**요청 헤더 정보의 처리**

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
sendRedirect(String location) | | 웹 페이지 대신 지정한 URL 로 이동<br>- response.sendRedirect("http://java.sun.com");<br>- response.sendRedirect("Form.html");
setStatus(response.필드 or 상태 코드) | | 응답에 상태 코드를 전송<br>- response.setStatus(response.SC_FORBIDDEN);<br>- response.setStatus(404);
setError(response.필드 or 상태 코드) | | 응답에 상태 코드를 전송<br>- response.setError(response.SC_FORBIDDEN);<br>- response.setError(404);
setBufferSize(int size) | | 버퍼의 크기 설정

### out
* JSP 페이지가 생성하는 모든 내용은 out 객체를 통해 전송하게 된다.
* 그러므로 out 객체를 사용해 문자열이나 변수의 값을 출력할 수 있다.
* 그리고 JSP 에서 사용하고 있는 버퍼는 실제로 out 객체에서 내부적으로 사용하고 있는 버퍼이므로
 이와 관련된 메소드들도 제공한다.

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
* JSP 페이지에서 다른 내장 객체를 얻거나 하나의 페이지에서 다른 페이지로 제어권 등을 넘겨줄 때 사용

**내장 객체 참조 관련 메소드**

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

**페이지 전달 관련 메소드**

메소드 | 설명
-------|-------
forward(String path) | path 에 지정된 페이지로 포워딩
include(String path) | path 에 지정된 페이지 포함

**속성 관련 메소드**

메소드 | 설명
-------|-------
getAttribute(String name) | name 에 해당하는 속성값 리턴
removeAttribute(String name) | name 에 해당하는 속성값 삭제
setAttribute(String name, Object) | name 이란 이름으로 Object 형 데이터 저장

### application
* 웹 어플리케이션이 실행되는 환경의 정보를 담고 있음

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
* 웹 브라우저의 요청에 대한 정보의 세션과 관련 정보를 저장하고 관리하는 기능

메소드 | 설명
-------|-------
getId() | 세션 ID 리턴
getCreatingTime() | 세션이 생성된 시간 리턴
getLastAccessTime() | 현재 세션으로 마지막 작업 시간 리턴
getMaxInactiveInterval() | 세션 유지 시간 리턴
setMaxInactiveInterval(time) | 세션 유효 시간을 time 으로 설정
invalidate() | 현재 세션 종료

### config
* 서블릿이 초기화될 때, JSP 컨테이너가 환경 정보를 서블릿으로 전달할 때 사용하는 객체

메소드 | 설명
-------|-------
getInitParameter(String name) | 초기화 파라미터 값 리턴
getInitParameterNames() | 서블릿 초기화 파라미터 이름 리턴
getServletName() | 서블릿 이름 리턴

### page
* JSP 자체를 나타내는 객체로서 자기 자신을 참조할 때 사용
* 최근에는 거의 사용하지 않음
    * 웹 컨테이너는 Java 만을 지원해서 굳이 page 객체를 사용하지 않고도 직접 참조할 수 있기 때문
    
### exception
* JSP 페이지에서 발생한 예외를 처리할 페이지를 지정할 때 전달되는 객체
* 기본값이 false 이므로 예외 처리를 위한 exception 객체를 사용하려면 반드시 isErrorPage 속성을 true 로 지정해야 함

메소드 | 설명
-------|-------
getMessage() | 오류 메시지 내용 리턴
printStackTrace() | 표준 출력 스트림으로 스택 추적 정보 출력
toString() | 예외 클래스 이름과 오류 메시지 리턴 


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

## 자바빈 (JavaBeans)
* 웹 프로그래밍에서 데이터의 표현을 목적으로 사용
* 일반적인 구성은 다음과 같습니다.
    * 값을 저장하기 위한 필드
    * 값을 수정하기 위한 setter
    * 값을 읽기 위한 getter
    
### 자바빈 프로퍼티
* 프로퍼티는 자바빈에 저장되어 있는 값을 표현
* 메소드 이름을 사용하여 프로퍼티의 이름을 결정
* 규칙: 프로퍼티 이름이 propertyName 일 경우
```java
setter: public void setPropertyName(Type Value);
getter: public Type getPropertyName();
boolean 타입일 경우 getter 에 get 대신 is 사용 가능
배열 지정 가능: 예) public void setNames(String[] values);
```
* 읽기/쓰기
    * 읽기 전용: get 또는 is 메소단 존재하는 프로퍼티
    * 읽기/쓰기: get/set 또는 is/set 메소드가 존재하는 프로퍼티
    
### jsp:useBean 태그
* JSP 에서 자바빈 객체를 생성할 때 사용
* 구문
```html
<jsp:useBean id="[빈이름]" class="[자바빈클래스이름]" scope="[범위]"/>
```
* id: JSP 페이지에서 자바빈 객체에 접근할 때 사용할 이름
* class: 패키지 이름을 포함한 자바빈 클래스의 완전한 이름
* scope: 자바빈 객체가 저장될 영역을 지정한다.
    > page, request, session, application 중 하나를 값으로 갖는다. 기본값은 page

### jsp:setProperty 태그
* 자바빈 객체의 프로퍼티 값 설정
* 구문
```html
<jsp:setProperty name="id" property="이름" value="값"/>
```
* name: 자바빈 객체의 이름
* property: 값을 설정할 프로퍼티
* value: 프로퍼티의 값
```html
<jsp:setProperty name="id" property="이름" param="파라미터이름"/>
```
* param: 프로퍼티의 값으로 사용할 파라미터 이름
```html
<jsp:setProperty name="id" property="*"/>
```
* 프로퍼티와 동일한 이름의 파라미터를 사용하여 값을 설정
* 폼에 입력한 값을 자바 객체에 저장할 때 유용하게 사용

### jsp:getProperty 액션 태그
* 프로퍼티의 값을 출력하기 위해 사용
* 구문
```html
<jsp:getProperty name="자바빈" property="프로퍼티"/>

```