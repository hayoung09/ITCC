<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="div1">
        <p>첫 번째 Div의 내용:</p>
        <span id="content1">안녕하세요!</span>
    </div>
    <div id="div2">
        <p>두 번째 Div의 내용:</p>
        <span id="content2">안녕, 세계!</span>
    </div>
    <button onclick="swapContents()">내용 교환</button>
</body>
<script src="change.js"></script>
</html>