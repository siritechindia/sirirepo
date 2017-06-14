
$(document).on("change", "#deptId", function() {
	var value = 'doctor';
	alert("value is---"+value);
	/*$.ajax({
	     type: "POST",
	    // dataType : 'json',
	     url: path+"/getDeptDetails",
	      data: { 
	    	 name: "John", location: "Boston" 
	    	 } // parameters 
	    	 
	    	 //dataType : 'json',
		        success: function(result) {
	    	
	    	alert("data:"+result);
	    }	 
	})*/
	
	
	
	$.ajax({
		type: 'POST',
		//data: dataString,
		url: path+'/getDeptDetails',
		success: function(data) {
			
			alert("data:"+data);
			
			 	
		}
	});
	
	
	
});