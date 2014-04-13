$(document).ready(function(){
	
	$(".button").click(function(){
		var attributeName = $(this).attr('id') + ".jpg";
		
		
		if($(this).attr('id') == "proj"){
			$("#contentContainer").load("projector/projector.html");
		}
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

		
	});

	$("#contentContainer").delegate('.button', 'mouseenter', function(){
		$(this).css("background-color", "yellow");
		$(this).css('cursor', 'pointer');
	});
	
	$("#contentContainer").delegate('.button', 'mouseout', function(){
		$(this).removeAttr("style");
	});
	
})