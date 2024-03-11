<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- 부모 문서 -->
<h1>부모의 라디오 버튼</h1>
<form id="parentForm">
    <input type="radio" name="parentRadio" value="1"> 라디오 버튼 1
    <input type="radio" name="parentRadio" value="2"> 라디오 버튼 2
    <input type="radio" name="parentRadio" value="3"> 라디오 버튼 3
</form>
<hr>
<!-- iframe 내부 -->
<iframe id="myIframe" src="iframe_content.jsp"></iframe>


</body>
</html>