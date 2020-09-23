<%@ page contentType="text/html;charset=utf-8" %>

<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Web_2</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="icon" href="images/favicon.jpg" type="img/jpg">
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
         <circle id="point" r="3" cx="200" cy="200" fill="#641AD5" stroke="#641AD5" visibility="hidden"/>
         </svg>
     </div>

	<div id = "menu"> 
	    <form id = "coord" method="GET" action = "controllerServlet" onsubmit = "return valid()">

		    <p> Значение Х:
			    <div class="x">
                 <input type="hidden" name="x" value=" " id="xHiddenButton">
			   <input type="button" name="x" value="-3" class="xButton" onclick="xButtonsValidate(this)">
               <input type="button" name="x" value="-2" class="xButton" onclick="xButtonsValidate(this)">
               <input type="button" name="x" value="-1" class="xButton" onclick="xButtonsValidate(this)">
               <input type="button" name="x" value="0" class="xButton" onclick="xButtonsValidate(this)">
               <input type="button" name="x" value="1" class="xButton" onclick="xButtonsValidate(this)">
			   <input type="button" name="x" value="2" class="xButton" onclick="xButtonsValidate(this)">
			   <input type="button" name="x" value="3" class="xButton" onclick="xButtonsValidate(this)">
			   <input type="button" name="x" value="4" class="xButton" onclick="xButtonsValidate(this)">
			   <input type="button" name="x" value="5" class="xButton" onclick="xButtonsValidate(this)">
                <input type="hidden" name="pointX" value="">
			  </div>
            </p>
			 
			<p class = "forY"> 
			   <label for="textfieldY">Значение Y ∈ (-3;5):</label>
               <input type="text" id="textfieldY" autocomplete="off" name="y" maxlength = "7" placeholder = "Введите значение Y">
                <input type="hidden" name="pointY" value="">
            </p>
			
			<p> Значение R:
			 <div class="r">
               <input type="hidden" name="r" value=" " id="rHiddenButton">
			    <div id="r">
			      <input type="button" name="r" value="1" class="rButton" onclick="rButtonsValidate(this)">
                  <input type="button" name="r" value="2" class="rButton" onclick="rButtonsValidate(this)">
                  <input type="button" name="r" value="3" class="rButton" onclick="rButtonsValidate(this)">
                  <input type="button" name="r" value="4" class="rButton" onclick="rButtonsValidate(this)">
                  <input type="button" name="r" value="5" class="rButton" onclick="rButtonsValidate(this)">
				</div>
			  </div>
            </p>
			
			<p>
               <input type="submit" value="Отправить">
            </p>
            <div id="error"></div>
            <input type="hidden" name="isFromGraphic" value="0">
		</form>
		
		
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