<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<!-- �θ� ���� -->
<h1>�θ��� ���� ��ư</h1>
<form id="parentForm">
    <input type="radio" name="parentRadio" value="1"> ���� ��ư 1
    <input type="radio" name="parentRadio" value="2"> ���� ��ư 2
    <input type="radio" name="parentRadio" value="3"> ���� ��ư 3
</form>
<hr>
<!-- iframe ���� -->
<iframe id="myIframe" src="iframe_content.jsp"></iframe>


</body>
</html>