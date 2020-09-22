const MAX_X = 5;
const MIN_X = -3;

document.getElementById("graphic").onclick = function(event) {
	      const rect = document.getElementById("graphic").getBoundingClientRect();
		  $('#error').text("");
			
		  if(!isNaN(r)){
            const x = event.clientX - rect.left;
            const y = event.clientY - rect.top;
			const r_pixels = 90;

            const centerX = 125;
            const centerY = 125;
			
			const cordX = findNearest((x - centerX) * r / r_pixels);
			let cordY = Math.min(Math.max(-(y - centerY) * r / r_pixels, -2.99999), 4.99999);
			cordY = cordY.toFixed(5);
			
			const resX = cordX * r_pixels / r + centerX;
			const resY = centerY - cordY * r_pixels / r;
			changePoint(resX,resY);
		   }
		 else{
		    $('#error').text("Укажите значение R");
		 }

		let form = document.createElement('form');
		form.action = 'controllerServlet';
		form.method = 'GET';
		form.submit();
};

function changePoint(x,y) {
    let point = $("#point");
    point.attr({
        cx: x,
        cy: y,
        visibility: "visible"
    });
}


function findNearest(value) {
	value = (value>MAX_X) ? MAX_X : Math.round(value);
	value = (value<MIN_X) ? MIN_X : Math.round(value);
    
	return value;
}

               