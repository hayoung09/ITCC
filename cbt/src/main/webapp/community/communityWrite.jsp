<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 형식화를 할 때는 fmt -->
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link 선언          -->
    <link rel="stylesheet" type="text/css" href="./css/main.css?v=1">
    <link rel="stylesheet" type="text/css" href="./css/style_index.css">
    <link rel="stylesheet" type="text/css" href="./communitycss/communityWrite.css?after">

    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <script src="./javascript/script.js"></script>
    <script src="./javascript/community.js"></script>

    <title>
        ITCC
    </title>
</head>
<body>

<header>
        <div class="header_container">
            <div class="logo_container">
                <a href="./membermain.jsp">ITCC</a>
            </div>
            <div class="nav_container" id="nav_menu">
                <div class="menu_container">
                      <ul class="menu">
                        <li class="menu_1">
                            <a class="menu_title">문제풀기</a>
                            <ul class="menu_1_content">
                                <li><a class="menu_index" href="../cbtstart.jsp">실전 모의고사</a></li>
                                <li><a class="menu_index" href="../cbt_choose.jsp">기출문제 풀이</a></li>
                            </ul>
                        </li>
                        <li class="menu_2">
                            <a class="menu_title">자료</a>
                            <ul class="menu_2_content">
                                <li><a class="menu_index" href="../itstudytest.jsp">기출문제 모음</a></li>
                                <li><a class="menu_index" href="../itstudymovie.jsp">IT 영상 자료</a></li>
                            </ul>
                        </li>
                        <li class="menu_3">
                            <a class="menu_title" href = "communityList.jsp">자유게시판</a>
                        </li>
                    </ul>

                </div>
                <form action = "logout.do">
                <div class="member_container">
                    <ul class="member">
                    	<a class = "menu_title">${loginUser.username } 님</a>
                    	<li class="menu_logout"><a class="menu_title" href="mypage.jsp">마이페이지</a></li>
                    	<input type = "submit" class = "logout" value = "로그아웃">
                    </ul>
                </div>
                </form>
            </div>
        </div>
</header>

<div id="communityWrite" align="center">
	<h1>게시글 등록</h1>
	
	<form name="frm" method="post" action="CommunityServlet">
	<input type="hidden" name="command" value="community_write">
		
		<table>		
		<tr>
			<th>제 목</th>
			<td><input type="text" style="width:30%; border:none" name="title" placeholder="반드시 입력해주세요"></td>
		</tr>
		
		<tr>
			<th>내 용</th>
			<td>
			<textarea name="content" placeholder="내용을 입력해주세요"></textarea>
			</td>
		</tr>
		</table>
		
		<br>
		<div class="button">
			<input type="submit" value="등록" onclick="return communityCheck()">
			<input type="reset" value="다시작성">
			<input type="button" value="목록" onclick="location.href='CommunityServlet?command=community_list'">
		</div>
		
	</form>
</div>

</body>
</html>