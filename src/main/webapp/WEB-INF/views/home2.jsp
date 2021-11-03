<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home2</title>
</head>
<body>
	<h1>[Spring Web]</h1>
	<ul>
		<li><p>JSP 연습</p></li>
		<ol>
			<li><a href="res">리소스 사용</a>
			<li><a href="jstl1">JSTL 사용 - 코어 라이브러리</a>
			<li><a href="jstl2">JSTL 사용 - 포매팅 라이브러리 사용</a>
			<li><a href="jstl3">JSTL 사용 - 함수 라이브러리 사용</a>
		</ol>
		<br>
		<li><p>Parameter 전달</p></li>
		<ol>
			<li><a href="param1?str=abc&num=100">GET method로 parameter</a>
			<li><a href="param2">POST method로 parameter</a>
			<li><a href="param3">VO객체로 전달</a>
		</ol>
		<br>
		<li><p>Session 테스트</p></li>
		<ol>
			<li><a href="session1">Session 테스트1 - Session에 값 저장</a>
			<li><a href="session2">Session 테스트2 - Session에서 값 삭제</a>
			<p>SessionController에서 저장한 세션값 value : ${value }</p>
			
			<li><a href="step1">Session 테스트2 - annotation 사용</a></li>
		</ol>
		<br>
		<li><p>Cookie 테스트</p></li>
		<ol>
			<li><a href="cookie1">Cookie 저장</a>
			<li><a href="cookie2">Cookie 삭제</a>
			<li><a href="cookie3">모든 Cookie 일기</a>
			<li><a href="cookie4">특정 Cookie 읽기</a>
		</ol>
	</ul>
</body>
</html>