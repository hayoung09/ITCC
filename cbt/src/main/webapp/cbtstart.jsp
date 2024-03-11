<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setHeader("Pragma", "no-cache"); 
response.setHeader("Cache-Control", "no-cache"); 
response.setHeader("Cache-Control", "no-store"); 
response.setDateHeader("Expires", 0L); 
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ITCC</title>
    <script src="javascript/script.js"></script>
    <link rel="stylesheet" href="./css/cbtstart.css">
</head>
<body>
<div class="cbt">
    <div class="cbt_group1">
        <label for="main_category">
            <select class="form-control" id="main_category" name="main_category" onchange="maincategorychange(this)">
            <option>과목을 선택하세요.</option>
            <option value="a">정보처리기능사</option>
            <option value="b">정보처리산업기사</option>
            <option value="c">정보처리기사</option>
            </select>
        
        </label>
    </div>
	<div class="search">
        <button type = "button" class="custom-btn btn-8" onclick="location.href = 'cbt/index.jsp'"><span>시험 시작</span></button>
        <button type = "button" class="custom-btn btn-8" onclick="location.href = './membermain.jsp'"><span>홈으로</span></button>
    </div>
</div>   

</body>

</html>