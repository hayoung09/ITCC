<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- ����ȭ�� �� ���� fmt -->
<!DOCTYPE html>
<html>
<head>

<!--          meta ����          -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link ����          -->
    <link rel="stylesheet" type="text/css" href="./css/main.css?v=1">
    <link rel="stylesheet" type="text/css" href="./css/style_index.css">
    <link rel="stylesheet" type="text/css" href="./communitycss/communityList.css?v=1">

    <!--          script ����          -->
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
                            <a class="menu_title">����Ǯ��</a>
                            <ul class="menu_1_content">
                                <li><a class="menu_index" href="../cbtstart.jsp">���� ���ǰ��</a></li>
                                <li><a class="menu_index" href="../cbt_choose.jsp">���⹮�� Ǯ��</a></li>
                            </ul>
                        </li>
                        <li class="menu_2">
                            <a class="menu_title">�ڷ�</a>
                            <ul class="menu_2_content">
                                <li><a class="menu_index" href="../itstudytest.jsp">���⹮�� ����</a></li>
                                <li><a class="menu_index" href="../itstudymovie.jsp">IT ���� �ڷ�</a></li>
                            </ul>
                        </li>
                        <li class="menu_3">
                            <a class="menu_title" href = "communityList.jsp">�����Խ���</a>
                        </li>
                    </ul>
                </div>
                <form action = "logout.do">
                <div class="member_container">
                    <ul class="member">
                    	<a class = "menu_title">${loginUser.username } ��</a>
                    	<li class="menu_logout"><a class="menu_title" href="mypage.jsp">����������</a></li>
                    	<input type = "submit" class = "logout" value = "�α׾ƿ�">
                    </ul>
                </div>
                </form>
            </div>
        </div>
    </header>
    
    
<div id="communityList" align="center">
	<h1>�Խñ� ����Ʈ</h1>
	
	<table class="list">
		<tr>
			<td colspan="5" style="border: white; text-align:right">
				<a href="CommunityServlet?command=community_write_form">�Խñ� ���</a>
			</td>
		</tr>
		
		<tr>
			<th>��ȣ</th><th>���̵�</th><th>����</th><th>�ۼ���</th><th>��ȸ</th>
		</tr>
		
		<c:forEach items="${communitylist}" var="community"> <!-- �Ѿ�� ���� board�� ��´�. -->
			<tr>
				<td>${community.num}</td>
				<td>${community.id}</td>
				<td>
				<!-- Ÿ��Ʋ�� ������ �������� �Ѿ�µ� command�� community_view�� �����ϰ� ����. ���⼭ num���� ������ ����.  -->
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