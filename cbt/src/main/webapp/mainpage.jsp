<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/mainpage.css">
<script src = "./javascript/mainpage.js"></script>
</head>
<body>
	<form action = '/' method = "post">
    <header class="header">
        <div class="inner">
            <h1 class="logo"><img src = "./logo.png" style = "float:left;"><a href="mainpage.html">ITCC</a></h1>
            <nav>
                <ul class="gnb">
                    <li><a href="loginfix.html">로그인</a></li>
                    <li><a href="c_signup.html">회원가입</a></li>
                    <li><a href="javascript:void(0);" onclick="myFunction()">마이페이지</a></li>
                    <li><a href = "javascript:void(0);" onclick="myFunction()">공지사항</a></li>
                </ul>
            </nav>
        </div>
    </header>

    <section class="visual">
        <div class="inner">
            <ul class="gnb2">
                <li><a href="javascript:void(0);" onclick="myFunction()">실전 모의고사</a></li>
                <li><a href="javascript:void(0);" onclick="myFunction()">기출문제 풀이</a></li>
                <li><a href="javascript:void(0);" onclick="myFunction()">기출문제 모음</a></li>
                <li><a href="javascript:void(0);" onclick="myFunction()">IT 영상 자료</a></li>
                <li><a href="javascript:void(0);" onclick="myFunction()">자유게시판</a></li>
            </ul>
        </div>    
    </section>

    <section class = "container">
        <div class = "arrow prev">&lt;</div>
        <div class = "banner">
            <br>
            <div class = "img"><a href = "ginengsa.html"><img src = "./정보처리기능사.png"></a></div>
            <div class = "img"><a href = "sanupgisa.html"><img src = "./정보처리산업기사.png"></a></div>
            <div class = "img"><a href = "gisa.html"><img src = "./정보처리기사.png"></a></div>
        </div>

    </section>

    <script>
        const btns = document.querySelectorAll("button.btn");
        const banner = document.querySelector("div.banner");
        const arrows = document.querySelectorAll("div.arrow");
        console.log(btns);
        var count = 0;
        btns.forEach(function(value, index, ar){
            ar[index].addEventListener("click",
                function(){
                    count = index;
                    console.log("count : " + count);
                    banner.style.transform = "translate(-" + count * 90 + "vw)";
                }
            )
        });
    
        // homework : GOD -> next, prev 버튼을 누르면 뒤, 앞 이미지가 나오도록
        //                                  나오도록 구현하시오
        //                              hint) arrows.forEach((arrow)=> .....)
        //                                     이 때 arrow.classList[1]
    
        var time = setInterval(
            function(){
                if(count == 5) count = 0;
                else count++;
    
                banner.style.transform = "translate(-" + count * 90 + "vw)";
            }
        , 3000);
    </script>

    <section class="service content">
        <div class="inner">
            <h2 class="title">제공되는 서비스</h2>
            <p class="txt">IT 시험에 관한 유사 경험과 지식을 쌓을 수 있습니다</p>
            <div class="wrap">
                <div class="box">
                    <div class="pic"><a href = "cbt.html"><img src="./realexam.png" alt=""></a></div>
                    <div class="info">
                        <p class="service_title">실전 모의고사</p>
                        <p class="service_txt">다양한 기출 문제들과 실전 문제들이 조합되어 만들어진 모의고사 형식으로 연습을 할 수 있습니다.</p>
                    </div>
                </div>
                <div class="box">
                    <div class="pic"><a href = "cbt2.html"><img src="./basicexam.png" alt=""></a></div>
                    <div class="info">
                        <p class="service_title">기출문제 풀이</p>
                        <p class="service_txt">지금까지 출제되었던 기출문제들을 한 곳에 모아 여러 다양한 문제들을 풀어볼 수 있습니다.</p>
                    </div>
                </div>
                <div class="box">
                    <div class="pic"><a href = "itstudy.html"><img src="./ITstudy.png" alt=""></a></div>
                    <div class="info">
                        <p class="service_title">IT 공부자료</p>
                        <p class="service_txt">IT에 관련된 다양한 학습 자료들을 영상으로 모아두어 편하게 학습을 할 수 있습니다.</p>
                    </div>
                </div>
                <div class="box">
                    <div class="pic"><a href = "communityfix.html"><img src="./community.png" alt=""></a></div>
                    <div class="info">
                        <p class="service_title">자유 게시판</p>
                        <p class="service_txt">여러 사람들과 정보 및 지식을 공유하며 다양한 IT 관련 내용들을 공유 할 수 있습니다. </p>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <div class="board_wrap">
        <div class="board_title">
            <strong>공지사항</strong>
            <p>공지사항 알려드립니다.</p>

        </div>
        <div class="board_list_wrap">
            <div class="board_list">
                <div class="top">
                    <div class="num">번호</div>
                    <div class="title">제목</div>
                    <div class="writer">카테고리</div>
                    <div class="date">작성일</div>
                    <div class="count">조회</div>
                </div>
                <div>
                    <div class="num">1</div>
                    <div class="title"><a href="view.html">공지1</a></div>
                    <div class="writer">공고</div>
                    <div class="date">2023.06.10</div>
                    <div class="count">21</div>
                </div>
                <div>
                    <div class="num">2</div>
                    <div class="title"><a href="view.html">공지2</a></div>
                    <div class="writer">업데이트</div>
                    <div class="date">2023.06.10</div>
                    <div class="count">21</div>
                </div>
                <div>
                    <div class="num">3</div>
                    <div class="title"><a href="view.html">공지3</a></div>
                    <div class="writer">서비스</div>
                    <div class="date">2023.06.10</div>
                    <div class="count">21</div>
                </div>
                <div>
                    <div class="num">4</div>
                    <div class="title"><a href="view.html">공지4</a></div>
                    <div class="writer">이벤트</div>
                    <div class="date">2023.06.10</div>
                    <div class="count">21</div>
                </div>
                <div>
                    <div class="num">5</div>
                    <div class="title"><a href="view.html">공지5</a></div>
                    <div class="writer">박현우</div>
                    <div class="date">2023.06.10</div>
                    <div class="count">21</div>
                </div>
                
            </div>
        </div>
    </div>
</form>
</body>

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
        <span>E-mail : contact-us @ seoil.co.kr</span>
        <span>사업자등록번호 : 220-87-17483호</span>
        <span>통신판매업 신고번호 : 제2013-경기안양-1659호</span>
        <a href="#" class="bizinfo" target="_blank" onclick="window.open(this.href, 'ftc', 'width=750, height=700, scrollbars=yes');return false;"><span>사업자정보확인</span></a>
    </address>
    <p class="copyright">© ICBT-KOREA Corporation All Rights Reserved.</p>
</div>
</body>
</html>