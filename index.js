$(document).ready(function(){
	//alert("jquery functional");
	
	$("#button").click(function(){
		
		jQuery.ajax({
		   type: "GET",
		   url: "/sikuliInterface.php",
		   success: function (msg) {
			   alert("Return from Server: " + msg);
			   
			   window.location.href = "/mockup.html";
		   }
		});
		
	});
	
	$("#button").mouseenter(function(){
		$(this).css("background-color", "yellow");
	});
	
	$("#button").mouseout(function(){
		$(this).removeAttr("style");
	});	

});