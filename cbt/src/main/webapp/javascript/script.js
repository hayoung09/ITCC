/**
 * 
 */

$(document).ready(function() {
	$(".menu_1").hover(function() {
		$(".menu_1_content").slideToggle("fast");
	});

	$(".menu_2").hover(function() {
		$(".menu_2_content").slideToggle("fast");
	});
});

function updateCheck(){
	if(document.frm.currentPassword.value == ""){
		alert("현재 비밀번호를 입력해주세요");
		return false;
	}
	
	if(document.frm.pwd1.value == ""){
		alert("새로운 비밀번호를 입력해주세요");
		return false;
	}
	
	if(document.frm.pwd2.value == ""){
		alert("새로운 비밀번호를 입력해주세요");
		return false;
	}
	
	if(document.frm.pwd1.value != document.frm.pwd2.value){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	alert("비밀번호가 변경되었습니다.");
	
}

function outCheck(){
	if(document.frm.id.value == ""){
		alert("아이디를 입력해주세요");
		return false;
	}
	
	if(document.frm.pwd.value == ""){
		alert("비밀번호를 입력해주세요");
		return false;
	}
}	



function userCheck(){
	location.href = "mypage.jsp";
}
		 


function loginCheck() {

	if (document.frm.id.value == "") {
		alert("아이디를 입력하세요");
		return false;
	}
	if (document.frm.pwd.value == "") {
		alert("비밀번호를 입력해주세요");
		return false;
	}
}

function joinCheck() {
	if (document.frm.id.value == "") {
		alert("아이디를 입력하세요");
		return false;
	}
	if (document.frm.pwd.value == "") {
		alert("비밀번호를 입력해주세요");
		return false;
	}
	if (document.frm.pwd.value != document.frm.pwd_check.value) {
		alert("비밀번호가 일치하지 않습니다");
		frm.pwd.focus();
		return false;
	}
	if (document.frm.name.value == "") {
		alert("이름을 입력해주세요");
		return false;
	}
	if (document.frm.reid.value == "") {
		alert("아이디 중복체크를 확인해주세요");
		frm.userid.focus();
		return false;
	}

	alert("회원가입을 환영합니다!");
}



function idCheck() {
	if (document.frm.userid.value == "") {
		alert("아이디를 입력해주세요");
		document.frm.userid.focus();
		return;
	}
	var url = "idCheck.do?userid=" + document.frm.userid.value;
	window.open(url, "_blank_1", "toolbar=no , menubar=no, scrollbars=yes,resizable=no, width=450,height=200");
}


function idok() {
	opener.frm.userid.value = document.frm.userid.value;  //오프너가 부모 창(여기서 도큐먼트가 윈도우로 띄운 창)
	opener.frm.reid.value = document.frm.userid.value;
	self.close();
}


function cut() {
	alert("로그인 후 이용해주세요");
	return false;

}


function logoutCheck() {
	alert("로그아웃 되었습니다.")
}



/* 타이머 계산*/
var time = 3600;
var min = "";
var sec = "";

var x = setInterval(function() {
	min = parseInt(time / 60);
	sec = time % 60;

	document.getElementById("timer").innerHTML = min + "분" + sec + "초";
	time--;

	if (time < 0) {
		clearInterval(x);
		document.getElementById("timer").innerHTML = "시간초과";
		alert("시험시간이 끝났습니다!");
	}
}, 1000);

var currentNumber = 0;

function next() {
	currentNumber++;
	updateNumber();
}
 
function back() {
	currentNumber--;
	updateNumber();
}

function updateNumber() {
	var pageNumberElement = document.getElementById('page_number');
	if (pageNumberElement) {
		pageNumberElement.textContent = currentNumber;
	}

}

function checkOtherRadio(group1, group2) {
    var radiosGroup1 = document.getElementsByName(group1);
    var radiosGroup2 = document.getElementsByName(group2);

    for (var i = 0; i < radiosGroup1.length; i++) {
        radiosGroup1[i].addEventListener('change', function() {
            var selectedValue = this.value; // 첫 번째 그룹에서 선택된 값
            for (var j = 0; j < radiosGroup2.length; j++) {
                if (radiosGroup2[j].value === selectedValue) {
                    radiosGroup2[j].checked = true;
                }
            }
        });
    }
}


function checkEvenRadio(group1, group2) {
    var radiosGroup1 = document.getElementsByName(group1); 
    var radiosGroup2 = document.getElementsByName(group2); 

    for (var i = 0; i < radiosGroup1.length; i++) {
        radiosGroup1[i].addEventListener('change', function() {
            var selectedValue = this.value; // 첫 번째 그룹에서 선택된 값
            for (var j = 0; j < radiosGroup2.length; j++) {
                if (radiosGroup2[j].value === selectedValue) {
					//name비교를 해야되는데
                    radiosGroup2[j].checked = true;
                    
                }
            }
        });
    }
}



function testCheck() {
     
   var selectedValues = [];

   const numRadios = 100;
   
   for (var i = 1; i <= numRadios; i++) {
       var radioName = "number+" + i; // 이름에서 '+' 기호를 제거
       var radioButtons = document.getElementsByName(radioName);
       var checked = false; // 라디오 버튼 체크 여부를 나타내는 변수
   
       for (var j = 0; j < radioButtons.length; j++) {
           if (radioButtons[j].checked) {
               selectedValues.push(radioButtons[j].value);
               checked = true; // 라디오 버튼이 체크되었음을 표시
               break; // 체크된 라디오 버튼을 찾으면 루프를 종료
           }
       }
   
       if (!checked) {
           selectedValues.push(0); // 라디오 버튼이 체크되지 않았을 때 0을 추가
       }
   }
   
   // 3. 배열을 alert로 출력합니다.
   if (selectedValues.length == 100) {
       alert("채점하겠습니다.");
   } else {
       alert("아직 풀지 않은 문제가 있습니다. 채점 하시겠습니까?");
   }
   
   location.href="CbtServlet?command=cbt_answer_check&answer="+selectedValues;
   
}

