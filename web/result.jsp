<%@ page import="models.Dot" %>
<%@ page import="java.util.ArrayList" %>
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
        <div class = "header3">Студенты: Краюхина Марина, Таскаев Артур</div>
        <div class = "header4">Группа: <span class="P3111"> P3211</span></div>
    </header>

    <div>
        <%@ include file="incl/graphic.html" %>
        <% Dot dot = (Dot) session.getAttribute("currentDot");
            double x = Integer.parseInt(dot.getX())*90/Integer.parseInt(dot.getR())+125;
            double y = 125 - Double.parseDouble(dot.getY()) * 90 / Integer.parseInt(dot.getR());
        %>
        <circle id="point" r="3" cx="<%=x%>" cy="<%=y%>" fill="#641AD5" stroke="#641AD5"/>
<%--        <% ArrayList<Dot> history = (ArrayList<Dot>)session.getAttribute("history");%>--%>
<%--        <c:forEach var="dot" items="${history}">--%>
<%--            <circle id="point" r="3" cx="<%=Integer.parseInt(dot.getX())*90/Integer.parseInt(dot.getR())+125%>" cy="<%=125 - Double.parseDouble(dot.getY()) * 90 / Integer.parseInt(dot.getR())%>" fill="#641AD5" stroke="#641AD5"/>--%>
<%--        </c:forEach>--%>
        </swg>
    </div>

    <div>
        <a href="index.jsp">Страница с формой</a>
    </div>
    <%Dot currentDot = (Dot)session.getAttribute("currentDot"); %>
    <div class="currentTable">
        Текущие значения:
    </div>

    <table id="currentAnswer">
        <tr>
            <th>X</th> <td>${currentDot.getX()}</td>
        </tr>
        <tr>
            <th>Y</th> <td>${currentDot.getY()}</td>
        </tr>
        <tr>
            <th>R</th> <td id="currentR">${currentDot.getR()}</td>
        </tr>
        <tr>
            <th>Результат:</th> <td>${currentDot.getResult()}</td>
        </tr>
    </table>
    <div id = "menu">
        <div>
            <div class="currentTable">
                История:
            </div>
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