<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% response.setHeader("Pragma", "no-cache"); 
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
    
    <link rel="stylesheet" href="css/samplequestion.css?v=1">

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
                <form action = "logout.do" method = "post" name = "frm">
                <div class="member_container">
                    <ul class="member">
                    	<a class = "menu_title">${loginUser.username} 님</a>
                    	<li class="menu_logout"><a class="menu_title" href="mypage.jsp">마이페이지</a></li>
                    	<input type = "submit" class = "logout" value = "로그아웃">
                    </ul>
                </div>
                
            </div>
        </div>
    </header>

   <div class="board_wrap">
        <div class="board_title">
            <strong>기출문제 모음</strong>
            <p>정보처리기사 필기 기출문제 2020년 09월 26일</p>

        </div>
        <div class="board_view_wrap">
            <div class="board_view">
                <div class="title">
                    정보처리기사 필기 기출문제 2020년 09월 26일
                </div>
                <div class="info">
                    <dl>
                        <dt>번호</dt>
                        <dd>6</dd>
                    </dl>
                    <dl>
                        <dt>글쓴이</dt>
                        <dd>박현우</dd>
                    </dl>
                    <dl>
                        <dt>작성일</dt>
                        <dd>2023.03.10</dd>
                    </dl>
                    <dl>
                        <dt>조회수</dt>
                        <dd>42</dd>
                    </dl>
                </div>
                <div class="cont">
                    교사용 : 정답이 표시되어 있어서 기출문제 암기용으로 좋습니다.<br>
                    학생용 : 정답은 표시되어 있지 않으며 정답지는 포함되어 있습니다.<br>
                    해설집 : 해설과 정답지가 포함되어 있습니다.<br>
                    <br>
                    정보처리기사 필기 기출문제 2020년 09월 26일(교사용)<br>
                    <a href="./file/정보처리기사20200926(교사용).hwp"download>정보처리기사20200926(교사용).hwp</a><br>
                    <a href="./file/정보처리기사20200926(교사용).pdf"download>정보처리기사20200926(교사용).pdf</a><br>
                    <br>
                    정보처리기사 필기 기출문제 2020년 09월 26일(학생용)<br>
                    <a href="./file/정보처리기사20200926(학생용).hwp"download>정보처리기사20200926(학생용).hwp</a><br>
                    <a href="./file/정보처리기사20200926(학생용).pdf"download>정보처리기사20200926(학생용).pdf</a><br>
                    <br>
                    정보처리기사 필기 기출문제 2020년 09월 26일(해설집)<br>
                    <a href="./file/정보처리기사20200926(해설집).hwp"download>정보처리기사20200926(해설집).hwp</a><br>
                    <a href="./file/정보처리기사20200926(해설집).pdf"download>정보처리기사20200926(해설집).pdf</a><br>
                </div>
                <div class="download">
                    <dl>
                        <dt>첨부</dt>
                    </dl>
                    <dl>
                        <dt><a href="./file/정보처리기사20200926(교사용).hwp"download>정보처리기사20200926(교사용).hwp</a></dt>
                        <dd><a href="./file/정보처리기사20200926(교사용).pdf"download>정보처리기사20200926(교사용).pdf</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="./file/정보처리기사20200926(학생용).hwp"download>정보처리기사20200926(학생용).hwp</a></dt>
                        <dd><a href="./file/정보처리기사20200926(학생용).pdf"download>정보처리기사20200926(학생용).pdf</a></dd>
                    </dl>
                    <dl>
                        <dt><a href="./file/정보처리기사20200926(해설집).hwp"download>정보처리기사20200926(해설집).hwp</a></dt>
                        <dd><a href="./file/정보처리기사20200926(해설집).pdf"download>정보처리기사20200926(해설집).pdf</a></dd>
                    </dl>
                </div>
                <div class="commet_write">
                    <input type="text" placeholder="개인정보를 공유 및 요청하거나, 명예 훼손,무단 광고,불법 정보 유포시 모니터링 후 삭제될 수 있으며,이에 대한 민형사상 책임은 게시자에게 있습니다">
                </div>
            </div>
        
        <div class="bt_wrap">
            <a href="samplequestion.jsp" class="on">목록</a>
            <a href="fix.jsp">수정</a>
        </div>

        </div>
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