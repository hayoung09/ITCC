<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body>
<!-- iframe ���� (iframe_content.jsp) -->

<h1>IFrame���� ���� ��ư</h1>

<input type="radio" name="iframeRadio" value="1"> ���� ��ư 1
<input type="radio" name="iframeRadio" value="2"> ���� ��ư 2
<input type="radio" name="iframeRadio" value="3"> ���� ��ư 3

<script>
    // iframe ���ο��� ���� ��ư�� Ŭ���� �� ȣ��Ǵ� �Լ�
    function syncRadioButtons() {
        var iframeRadios = document.getElementsByName("iframeRadio");
        var parentRadios = window.parent.document.getElementsByName("parentRadio");

        for (var i = 0; i < iframeRadios.length; i++) {
            iframeRadios[i].addEventListener("click", function () {
                // iframe ���� ���� ��ư�� ���� ������ ���� ����
                // �θ� ������ ���� ��ư�� �����մϴ�.
                var selectedValue = this.value;
                for (var j = 0; j < parentRadios.length; j++) {
                    if (parentRadios[j].value === selectedValue) {
                        parentRadios[j].checked = true;
                    }
                }
            });
        }
    }

    // iframe �ε� �Ŀ� syncRadioButtons �Լ��� ȣ���Ͽ� �̺�Ʈ �ڵ鷯�� ����մϴ�.
    window.onload = syncRadioButtons;
</script>


</body>
</html>