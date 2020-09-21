<%@ page contentType="text/html;charset=utf-8" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Web_2</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="icon" href="images/favicon.jpg" type="img/jpg">
    <style>
        body {
            background: url("images/image_2.jpg") white;
            height: 100%;
        }
    </style>
</head>
<body>

<div id = "container">

    <header>
        <div class = "header1"><img src = 'https://cdn.betterttv.net/emote/55a63293b13ce179110b0193/2x'>Лабораторная работа №2 по Веб-программированию<img src='https://cdn.betterttv.net/emote/5bc2143ea5351f40921080ee/2x' ></div>
        <div class = "header2">Вариант №2225</div>
        <div class = "header3">Студентка: Краюхина Марина Юрьевна</div>
        <div class = "header4">Группа: <span class="P3111"> P3211</span></div>
    </header>

    <div>
        <%@ include file="incl/graphic.html" %>
    </div>

    <a href="index.jsp">Страница с формой</a>

    <div id = "menu">
        <div>
            <table id = "answer">
                <tr id='bold'>
                    <td class = "col1">X</td>
                    <td class = "col2">Y</td>
                    <td class = "col3">R</td>
                    <td class = "col4">Результат</td>
                </tr>
                <jsp:include page="incl/table.jsp" />
            </table>

        </div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"> </script>
<script src="js/main.js" charset="utf-8"></script>
<script src="js/coords.js" charset="utf-8"></script>
</body>
</html>
