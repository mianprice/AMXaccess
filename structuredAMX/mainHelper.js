var state = {
	"audio.jpg":false,
	"lights.jpg":false,
	"allOn.jpg":false,
	"nightLight.jpg":false,
	"allOff.jpg":false,
	"brightRoom.jpg":false,
	"mediumRoom.jpg":false,
	"projectionPreset.jpg":false,
	"wallCamsOn.jpg":false,
	"boardFluoroOn.jpg":false,
	"roomFluoroOn.jpg":false,
	"podiumOn.jpg":false,
	"walCamsOff.jpg":false,
	"boardFluoroOff.jpg":false,
	"roomFluoroOff.jpg":false,
	"podiumOff.jpg":false,
	"proj.jpg":false,
	"powerOff.jpg":false,
	"powerOn.jpg":false,
	"imageBlank.jpg":false,
	"PC1VGA1400x1050.jpg":false,
	"docCam.jpg":false,
	"laptopVGA1400x1050.jpg":false,
	"video.jpg":false,
	"laptopDVI.jpg":false,
	"up.jpg":false,
	"stop.jpg":false,
	"down.jpg":false,
	"systemReset.jpg":false
}

$(document).ready(function(){
	alert("document ready");
	
	$(".button").click(function(){
		var attributeName = $(this).attr('id') + ".jpg";
		state[attributeName] = !state[attributeName];
		alert("click event on button " + attributeName + " state: " + state[attributeName]);
		
		
		if($(this).attr('id') == "proj"){
			alert("loading projector");
			$("#contentContainer").load("projector/projector.html");
		}

		jQuery.ajax({
		   type: "POST",
		   url: "/sikuliInterface.php",
		   data: state,
		   success: function (msg) {
			   alert("Return from Server: " + msg);
			   
		   }
		});
		
	});
	
	$(".button").mouseenter(function(){
		$(this).css("background-color", "yellow");
		$(this).css('cursor', 'pointer');
	});
	
	$(".button").mouseout(function(){
		$(this).removeAttr("style");
	});	
	
	$("#contentContainer").delegate('.button', 'click', function(){
		var attributeName = $(this).attr('id') + ".jpg";
		state[attributeName] = !state[attributeName];
		alert("click event on button " + attributeName + " state: " + state[attributeName]);
		
		jQuery.ajax({
		   type: "POST",
		   url: "/sikuliInterface.php",
		   data: state,
		   success: function (msg) {
			   alert("Return from Server: " + msg);
			   
		   }
		});
		
	});

	$("#contentContainer").delegate('.button', 'mouseenter', function(){
		$(this).css("background-color", "yellow");
		$(this).css('cursor', 'pointer');
	});
	
	$("#contentContainer").delegate('.button', 'mouseout', function(){
		$(this).removeAttr("style");
	});
	
})