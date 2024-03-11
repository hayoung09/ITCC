<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
response.setHeader("Pragma", "no-cache"); 
response.setHeader("Cache-Control", "no-cache"); 
response.setHeader("Cache-Control", "no-store"); 
response.setDateHeader("Expires", 0L); 
%>
<!DOCTYPE html>
<html>
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
        <div class="cbt_group2">
            <label for="sub_category">
                <select class="form-control" id="sub_category" name="sub_category">
                    <option>선택해주세요</option>
                    <option value="one">2023년 07월 08일</option>
                    <option value="two">2023년 04월 25일</option>
                    <option value="three">2023년 02월 13일</option>
                    <option value="four">2022년 07월 02일</option>
                    <option value="five">2022년 04월 22일</option>
                </select>
            </label>
        </div>
        </label>
    </div>
    <button class="custom-btn btn-8" onclick="location.href='CbtServlet?command=onecbt'"><span>시험 시작</span></button>
    <button class="custom-btn btn-8" onclick="location.href='./membermain.jsp'"><span>홈으로</span></button>
</div>   
</body>
</html>