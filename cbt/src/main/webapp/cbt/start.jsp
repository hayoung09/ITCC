<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- meta 선언 -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- link 선언 -->
    <link rel="stylesheet" href="css/start.css?v=1">
    
    <!-- script 선언 -->
    <script src="https://kit.fontawesome.com/e1bd1cb2a5.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>

    <script type="text/javascript" src="javascript/script.js"></script>

    <style type="text/css">
        .startbtn {
            font-size: 18px;
            padding: 15px;
            background-color: rgba(77, 165, 124, 1);
            border: none;
            cursor: pointer;
            color: rgba(255, 255, 255, 1);
            font-weight: bold;
            border-radius: 15px;
            margin-left: 700px;
            margin-top : 400px;
        }
    </style>

    <title>
        ITCC
    </title>
</head>
<body>
    <input type="submit" class="startbtn" value="시작하기" onclick="location.href='../CbtServlet?command=cbt_next&pageNum=1&amount=5&begin_num=1&odd_begin_num=2'" /> 
</body>
</html>