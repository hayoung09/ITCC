<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<% response.setHeader("Pragma", "no-cache"); 
response.setHeader("Cache-Control", "no-cache"); 
response.setHeader("Cache-Control", "no-store"); 
response.setDateHeader("Expires", 0L); 
%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <!--          meta 선언          -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--          link 선언          -->
    <link rel="stylesheet" href="css/itstudytest.css">

    <!--          script 선언          -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <script src="javascript/script.js"></script>

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
                                <li><a class="menu_index" href="#">실전 모의고사</a></li>
                                <li><a class="menu_index" href="#">기출문제 풀이</a></li>
                            </ul>
                        </li>
                        <li class="menu_2">
                            <a class="menu_title">자료</a>
                            <ul class="menu_2_content">
                                <li><a class="menu_index" href="itstudytest.jsp">기출문제 모음</a></li>
                                <li><a class="menu_index" href="itstudymovie.jsp">IT 영상 자료</a></li>
                            </ul>
                        </li>
                        <li class="menu_3">
                            <a class="menu_title">자유게시판</a>
                        </li>
                    </ul>
                </div>
                <form action = "logout.do">
                <div class="member_container">
                    <ul class="member">
                    	<a class = "menu_title">${loginUser.username} 님</a>
                    	<li class="menu_logout"><a class="menu_title" href="mypage.jsp">마이페이지</a></li>
                    	<input type = "submit" class = "logout" value = "로그아웃">
                    </ul>
                </div>
                </form>
            </div>
        </div>
    </header>

	    <h2 class="title">정보처리기사</h2>

    <section class="service content">
        <div class="inner">	
                <div class="box">
                    
                    <a href="https://www.youtube.com/watch?v=JhKOsZuMDWs&list=PL6i7rGeEmTvqEjTJF3PJR4a1N9KTPpfw0">
                    <img src="img/it1.png" alt="">
                    </a>
                     
                        <p class="service_title">
                        <a href="https://www.youtube.com/watch?v=JhKOsZuMDWs&list=PL6i7rGeEmTvqEjTJF3PJR4a1N9KTPpfw0">
                        정보처리기사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=JhKOsZuMDWs&list=PL6i7rGeEmTvqEjTJF3PJR4a1N9KTPpfw0">
                        (2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=JhKOsZuMDWs&list=PL6i7rGeEmTvqEjTJF3PJR4a1N9KTPpfw0">
                        이기적 영진닷컴</a></li>
                    
                </div>
                <div class="box">
                    <a href="https://www.youtube.com/watch?v=4TaS6tpb9uA"><img src="img/newit1.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=4TaS6tpb9uA">정보처리기사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=4TaS6tpb9uA">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=4TaS6tpb9uA">수제비</a></li>
                    
                </div>
                
                <div class="box">
                    <a href="https://www.youtube.com/watch?v=bKaHDEkfPdw&list=PLpYNFXUfkvDoKIPr-o9GiD_Jr7tmyTjNu">
                    <img src="img/it2.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=bKaHDEkfPdw&list=PLpYNFXUfkvDoKIPr-o9GiD_Jr7tmyTjNu">정보처리기사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=bKaHDEkfPdw&list=PLpYNFXUfkvDoKIPr-o9GiD_Jr7tmyTjNu">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=bKaHDEkfPdw&list=PLpYNFXUfkvDoKIPr-o9GiD_Jr7tmyTjNu">시나공</a></li>
                </div>
                <div class="box">
					<a href="https://www.youtube.com/watch?v=oW2hMQTVgfw&list=PLKpxllD6C8CnkSWfqRJsHOYtbBFnvtrcY">
					<img src="img/it3.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=oW2hMQTVgfw&list=PLKpxllD6C8CnkSWfqRJsHOYtbBFnvtrcY">정보처리기사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=oW2hMQTVgfw&list=PLKpxllD6C8CnkSWfqRJsHOYtbBFnvtrcY">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=oW2hMQTVgfw&list=PLKpxllD6C8CnkSWfqRJsHOYtbBFnvtrcY">주간컴공</a></li>

                </div>
                
                <div class="slider__btn">
                	<!-- <input type = "button" class = "btn-left" value = "prev">
                	<input type = "button" class = "btn-right" value = "next"> -->
                	<button href="#" class="prev" role="button" aria-label="왼쪽 이미지">prev</button>
                    <button href="#" class="next" role="button" aria-label="오른쪽 이미지">next</button>
                </div>
            </div>
        </div>
    </section>


    <h2 class="title">정보처리산업기사</h2>

    <section class="service content">
        <div class="inner">
                <div class="box">
                    <a href="https://www.youtube.com/watch?v=iIf7CnqcLvM&list=PLpYNFXUfkvDr367I3n01Q_vd2xLA5pv7w">
                    <img src="img/it4.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=iIf7CnqcLvM&list=PLpYNFXUfkvDr367I3n01Q_vd2xLA5pv7w">정보처리산업기사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=iIf7CnqcLvM&list=PLpYNFXUfkvDr367I3n01Q_vd2xLA5pv7w">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=iIf7CnqcLvM&list=PLpYNFXUfkvDr367I3n01Q_vd2xLA5pv7w">시나공 정보처리</a></li>
                    
                </div>
                <div class="box">
                    <a href="https://www.youtube.com/watch?v=Bhdqcub3GPg&list=PLz95GL3y9Hv3UVuzuK33Eo_6B2P_sQyWt">
                    <img src="img/it5.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=Bhdqcub3GPg&list=PLz95GL3y9Hv3UVuzuK33Eo_6B2P_sQyWt">정보처리산업기사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=Bhdqcub3GPg&list=PLz95GL3y9Hv3UVuzuK33Eo_6B2P_sQyWt">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=Bhdqcub3GPg&list=PLz95GL3y9Hv3UVuzuK33Eo_6B2P_sQyWt">기사퍼스트</a></li>
                </div>
                <div class="box">
				<a href="https://www.youtube.com/watch?v=nLrHGTWeNuI&list=PL6i7rGeEmTvql8j83Yv_jRfqtDuPcNWmj">
				<img src="img/it6.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=nLrHGTWeNuI&list=PL6i7rGeEmTvql8j83Yv_jRfqtDuPcNWmj">정보처리산업기사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=nLrHGTWeNuI&list=PL6i7rGeEmTvql8j83Yv_jRfqtDuPcNWmj">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=nLrHGTWeNuI&list=PL6i7rGeEmTvql8j83Yv_jRfqtDuPcNWmj">이기적 영진닷컴</a></li>
                    
                </div>

                <div class="box">
					<a href="https://www.youtube.com/watch?v=LcqWazAM7qc">
                    <img src="img/newit2.png" alt=""></a> 
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=LcqWazAM7qc">정보처리산업기사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=LcqWazAM7qc">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=LcqWazAM7qc">수제비</a></li>
                    
                </div>
                
                <div class="slider__btn1">
                    <button href="#" class="prev" role="button" aria-label="왼쪽 이미지">prev</button>
                    <button href="#" class="next" role="button" aria-label="오른쪽 이미지">next</button>
                </div>
            </div>
        </div>
    </section>


    <h2 class="title">정보처리기능사</h2>

    <section class="service content">
        <div class="inner">
                <div class="box">
					<a href="https://www.youtube.com/watch?v=EWSdk1einr0&list=PL6i7rGeEmTvr_wRmSSSuO2AFSLU_zpYQn">
					<img src="img/it7.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=EWSdk1einr0&list=PL6i7rGeEmTvr_wRmSSSuO2AFSLU_zpYQn">정보처리기능사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=EWSdk1einr0&list=PL6i7rGeEmTvr_wRmSSSuO2AFSLU_zpYQn">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=EWSdk1einr0&list=PL6i7rGeEmTvr_wRmSSSuO2AFSLU_zpYQn">이기적 영진닷컴</a></li>
                    
                </div>
                <div class="box">
                    <a href="https://www.youtube.com/watch?v=2FD56F3vHEY&list=PLfmYqbhgPzEPsQ8jE23ONiqsXjferdjnV">
                    <img src="img/it8.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=2FD56F3vHEY&list=PLfmYqbhgPzEPsQ8jE23ONiqsXjferdjnV">정보처리기능사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=2FD56F3vHEY&list=PLfmYqbhgPzEPsQ8jE23ONiqsXjferdjnV">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=2FD56F3vHEY&list=PLfmYqbhgPzEPsQ8jE23ONiqsXjferdjnV">한다맨쌤</a></li>
                    
                </div>

                <div class="box">
                    <a href="https://www.youtube.com/watch?v=4Sgvv81BQno"><img src="img/newit3.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=4Sgvv81BQno">정보처리기능사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=4Sgvv81BQno">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=4Sgvv81BQno">Path</a></li>
                    
                </div>

                <div class="box">
					<a href="https://www.youtube.com/watch?v=OFuQnRYrGkE&list=PLz95GL3y9Hv1bX6Wp4cVPaor61dpnWGiZ">
					<img src="img/it9.png" alt=""></a>
                        <p class="service_title"><a href="https://www.youtube.com/watch?v=OFuQnRYrGkE&list=PLz95GL3y9Hv1bX6Wp4cVPaor61dpnWGiZ">정보처리기능사 필기</a></p>
                        <li><a href="https://www.youtube.com/watch?v=OFuQnRYrGkE&list=PLz95GL3y9Hv1bX6Wp4cVPaor61dpnWGiZ">(2022년)</a></li>
                        <li><a href="https://www.youtube.com/watch?v=OFuQnRYrGkE&list=PLz95GL3y9Hv1bX6Wp4cVPaor61dpnWGiZ">기사퍼스트</a></li>
                </div>
                <div class="slider__btn2">
                    <button href="#" class="prev" role="button" aria-label="왼쪽 이미지">prev</button>
                    <button href="#" class="next" role="button" aria-label="오른쪽 이미지">next</button>
                </div>
            </div>
        </div>
    </section>
  
  
  
  

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
</body>

</html>