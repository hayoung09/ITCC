<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<!-- iframe 내부 (iframe_content.jsp) -->

<h1>IFrame안의 라디오 버튼</h1>

<input type="radio" name="iframeRadio" value="1"> 라디오 버튼 1
<input type="radio" name="iframeRadio" value="2"> 라디오 버튼 2
<input type="radio" name="iframeRadio" value="3"> 라디오 버튼 3

<script>
    // iframe 내부에서 라디오 버튼을 클릭할 때 호출되는 함수
    function syncRadioButtons() {
        var iframeRadios = document.getElementsByName("iframeRadio");
        var parentRadios = window.parent.document.getElementsByName("parentRadio");

        for (var i = 0; i < iframeRadios.length; i++) {
            iframeRadios[i].addEventListener("click", function () {
                // iframe 내부 라디오 버튼의 값과 동일한 값을 가진
                // 부모 문서의 라디오 버튼을 선택합니다.
                var selectedValue = this.value;
                for (var j = 0; j < parentRadios.length; j++) {
                    if (parentRadios[j].value === selectedValue) {
                        parentRadios[j].checked = true;
                    }
                }
            });
        }
    }

    // iframe 로드 후에 syncRadioButtons 함수를 호출하여 이벤트 핸들러를 등록합니다.
    window.onload = syncRadioButtons;
</script>


</body>
</html>