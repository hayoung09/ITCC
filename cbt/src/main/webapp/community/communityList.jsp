<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- 형식화를 할 때는 fmt -->
<!DOCTYPE html>
<html>
<head>

<!--          meta 선언          -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link 선언          -->
    <link rel="stylesheet" type="text/css" href="./css/main.css?v=1">
    <link rel="stylesheet" type="text/css" href="./css/style_index.css">
    <link rel="stylesheet" type="text/css" href="./communitycss/communityList.css?v=1">

    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <script src="./javascript/script.js"></script>

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
    
    
<div id="communityList" align="center">
	<h1>게시글 리스트</h1>
	
	<table class="list">
		<tr>
			<td colspan="5" style="border: white; text-align:right">
				<a href="CommunityServlet?command=community_write_form">게시글 등록</a>
			</td>
		</tr>
		
		<tr>
			<th>번호</th><th>아이디</th><th>제목</th><th>작성일</th><th>조회</th>
		</tr>
		
		<c:forEach items="${communitylist}" var="community"> <!-- 넘어온 값을 board에 담는다. -->
			<tr>
				<td>${community.num}</td>
				<td>${community.id}</td>
				<td>
				<!-- 타이틀을 누르면 서블릿으로 넘어가는데 command에 community_view를 저장하고 간다. 여기서 num값도 가지고 간다.  -->
				<a href="CommunityServlet?command=community_view&num=${community.num}">${community.title}</a>
				</td>
				<td><fmt:formatDate value="${community.writedate}"></fmt:formatDate></td>
				<td>${community.readcount}</td>	
			</tr>
		</c:forEach>
	</table>
</div>
    

</body>
</html>