var r;
var x;

function rButtonsValidate(input) {
	r = input.getAttribute('value');
	let buttons = document.getElementsByClassName("rButton");
	
	let hiddenInput = document.getElementById("rHiddenButton");

	hiddenInput.value = input.value;
	console.log(hiddenInput.value);

	for (let i = 0; i < buttons.length; i++)
	{
		if (buttons[i].className.includes(" greenButton"))
		{
			buttons[i].className = buttons[i].className.replace(" greenButton", "");
		}
	}

	if (input.className.includes(" greenButton"))
	{
		input.className.replace(" greenButton", "");
	}
	else
	{
		input.className = input.className + " greenButton";
	}
}

function xButtonsValidate(input) {
    x = input.getAttribute('value');
	let buttons = document.getElementsByClassName("xButton");

	let hiddenInput = document.getElementById("xHiddenButton");

	hiddenInput.value = input.value;
	console.log(hiddenInput.value);

	for (let i = 0; i < buttons.length; i++)
	{
		if (buttons[i].className.includes(" redButton"))
		{
			buttons[i].className = buttons[i].className.replace(" redButton", "");
		}
	}

	if (input.className.includes(" redButton"))
	{
		input.className.replace(" redButton", "");
	}
	else
	{
		input.className = input.className + " redButton";
	}
}

   function valid() {
        let y = parseFloat($('#textfieldY').val().replace(",", "."));
		$('#error').text("");
      
       if (isNaN(y) || y <= -3 || y >= 5) {
           $('#error').text("Значение Y должно быть в диапазоне (-3;5)");
		    $("#textfieldY").css("background-color", "red");
           return false;
     }
		else{
		    $("#textfieldY").css("background-color", "");
		}
		
		if (isNaN(x)) {
            $('#error').text("Укажите значение X");
            return false;
        }
		
		if(isNaN(r)){
			$('#error').text("Укажите значение R");
            return false;
		}
		
      return true;
    }