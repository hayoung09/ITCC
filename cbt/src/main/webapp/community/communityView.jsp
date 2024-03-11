<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> <!-- ����ȭ�� �� ���� fmt -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link ����          -->
    <link rel="stylesheet" type="text/css" href="./css/main.css?v=1">
    <link rel="stylesheet" type="text/css" href="./css/style_index.css">
    <link rel="stylesheet" type="text/css" href="./communitycss/communityView.css?v=1">

    <!--          script ����          -->
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


<!-- �Խ��� �󼼺��� â -->
<div id="communityView" align="center">
	<h1>�Խñ� �� ����</h1>
	
	<table>
		<tr>
			<th>��ȸ��</th>
			<td>${community.readcount}</td>
		</tr>
		
		<tr>
			<th>�ۼ���</th>
			<td><fmt:formatDate value="${community.writedate}"></fmt:formatDate></td>
		</tr>
		
		<tr>
			<th>�� ��</th>
			<td>${community.title}</td>
		</tr>
		
		<tr>
			<th>�� ��</th>
			<td>${community.content}</td>
		</tr>
	</table>
	
	<br>
	<div class="button">
		<input type="button" value="�ڷΰ���" onclick="location.href='CommunityServlet?command=community_list'">
	</div>
</div>


<!-- ��� â -->
<div id="communityComments" align="center">
	<h1>���</h1>
		<table>		
		<tr>
			<th class="th1" style="width:25%">�ۼ���</th>
		
			<th class="th2" style="width:75%">�� ��</th>
		</tr>
		
		<c:forEach items="${commentslist}" var="comments"> <!-- �Ѿ�� ���� board�� ��´�. -->
			<tr>
				<td class="td1">${comments.id}</td>
				<td class="td2">${comments.comments}</td>	
			</tr>
		</c:forEach>
		</table>
		
		<br>
		<div class="button">
			<input type="submit" value="��۴ޱ�" onclick="location.href='CommunityServlet?command=comments_write_form'">
			<input type="button" value="�ڷΰ���" onclick="location.href='CommunityServlet?command=community_list'">
		</div>
</div>
		

</body>
</html>