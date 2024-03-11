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
  <!--          meta 선언          -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link 선언          -->
    
    <link rel="stylesheet" href="css/userUpdate.css?v=1">

    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

   <script type="text/javascript" src="javascript/script.js"></script>

    <title>ITCC</title>
</head>
<body>
	<div class = "wrapper">
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
                                <li><a class="menu_index" href="cbtstart.jsp">실전 모의고사</a></li>
                                <li><a class="menu_index" href="cbt_choose.jsp">기출문제 풀이</a></li>
                            </ul>
                        </li>
                        <li class="menu_2">
                            <a class="menu_title">자료</a>
                            <ul class="menu_2_content">
                                <li><a class="menu_index" href="samplequestion.jsp">기출문제 모음</a></li>
                                <li><a class="menu_index" href="itstudymovie.jsp">IT 영상 자료</a></li>
                            </ul>
                        </li>
                        <li class="menu_3">
                            <a class="menu_title" href = "./community/communityList.jsp">자유게시판</a>
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

<div class = "middle">
        <h1 class="title">Welcome to mypage</h1>
        <section class="service">
            <div class="inner">
                    <div class="box">
                        <div class="pic"><img src="img/mypage1.gif" alt=""></div>
                        <div class="info">
                            <p class="service_title">내정보 변경</a></p>
                            <li><a href="userCheck.jsp">내정보 확인</a></li>
                            
                            <li><a href="updateView.do?userid='${loginUser.id}'">비밀번호 변경</a></li>
                            
                            <li><a href="userOut.jsp">회원 탈퇴</a></li>
                            
                        </div>
                    </div>
                    <div class="box">	
                        <div class="pic"><img src="img/mypage2.gif" alt=""></div>
                        <div class="info">
                            <p class="service_title">작성글 보기</a></p>
                            <li><a href="#">작성글 확인</a></li>
                            <li><a href="#">작성 댓글 확인</a></li>
                        </div>
                    </div>
                    <div class="box">
                        <div class="pic"><img src="img/mypage3.gif" alt=""></div>
                        <div class="info">
                            <p class="service_title">시험 결과</a></p>
                            <li><a href="scoreCheck.do?userid=${loginUser.id}">점수 확인</a></li>
                        </div>
                    </div>
                </div>
            
        </section>
        </div>     
        
    <h2 class="logo">비밀번호 변경</h2>
    <div class = "change_container">
	<form action ="userUpdate.do" method='post' name ='frm'>
		<input type = "hidden" name = "userId" value = "${loginUser.id}">
		
		<label for="pwd">현재 비밀번호 : </label>
		<input type="password" name="currentPassword">
		
		<label for="pwd">새 비밀번호 : </label>
		<input type="password" id="newPassword" name="pwd1">
		
		<label for="pwd">새 비밀번호 확인 : </label>
		<input type="password" id="checkpwd" name="pwd2">
		
		<input type = "submit" class = "change" value = "변경하기" onclick="return updateCheck()">
	</form>
	</div>

	<footer>
		<div class="footer">
		    <ul class="nav">
		        <li class="stipulation"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Stipualtion&quot;}"><span>이용약관</span></a></li>
		        <li class="privacy"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Privacy&quot;}"><span>개인정보처리방침</span></a></li>
		        <li class="youth"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Youthprotection&quot;}"><span>개인정보보호정책</span></a></li>
		        <li class="gameIp"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_GameIPguide&quot;}"><span>시험IP사용가이드</span></a></li>
		        <li class="gameTime"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Timekeeper&quot;}"><span>응시과목선택제</span></a></li>
		        <li class="help"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Help&quot;}"><span>고객센터</span></a></li>
		        <li class="totalSrv"><a href="#" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Sitemap&quot;}"><span>전체서비스</span></a></li>
		    </ul>
		    <ul class="nav">
		        <li class="company"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Company&quot;}"><span>회사소개</span></a></li>
		        <li class="recruit"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Career&quot;}"><span>시험안내</span></a></li>
		        <li class="ethics"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Ethics&quot;}"><span>윤리경영</span></a></li>
		        <li class="font"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_NexonFont&quot;}"><span>과목확인</span></a></li>
		        <li class="advertise"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_Advertise&quot;}"><span>광고문의</span></a></li>
		        <li class="pcroom"><a href="#" target="_blank" a2s="click" obj="P_MAIN" opt="{&quot;Name&quot;:&quot;Footer&quot;,&quot;Type&quot;:&quot;FM_PCbang&quot;}"><span>ICBT</span></a></li>
		    </ul>
		    <address class="address">
		        <span>㈜ICBT-KOREA 대표이사 이승훈, 장하영, 정유림, 박현우</span>
		        <span>경기도 안양시 동안구 시민대로 327번길 55</span>
		        <span>전화 : 1234-5678</span>
		        <span>팩스 : 0502-258-8322</span><br>
		        <span>E-mail : contact-us@seoil.co.kr</span>
		        <span>사업자등록번호 : 220-87-17483호</span>
		        <span>통신판매업 신고번호 : 제2013-경기안양-1659호</span>
		        <a href="#" class="bizinfo" target="_blank" onclick="window.open(this.href, 'ftc', 'width=750, height=700, scrollbars=yes');return false;"><span>사업자정보확인</span></a>
		    </address>
		    <p class="copyright">© ICBT-KOREA Corporation All Rights Reserved.</p>
		</div>
	</footer>
</div>
</body>
</html>