<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href = "css/membership.css" rel = "stylesheet"/>
<script src = "./c_signup.js"></script>
</head>
<body>
	<form action = '/' method = "post">
    <table>
        <div class = "name">
            <h1>ITCC</h1>
            <h2>회원가입</h2>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </div>
        <tr>
            <td>
                <div class = "signup_button">
                    <input class='but1' type="button" value="개인회원가입" onclick="Loginpage1GO()">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input class='but2' type="button" value="기업회원가입" onclick="Loginpage2GO()">
                </div>
            </td>
        </tr>
    	</table>
	</form>
</body>
</html>