$("document").ready(function() {
	var company = "masnegocio";
	var key = "nose757paper";

	var response = false;
	
	$("#companies").click(function( event ) { 
		var action = "companies.json";			
		getJson(action);
	});
	$("#projectcategories").click(function( event ) { 
		var action = "projectcategories.json";			
		getJson(action);
	});
	$("#projectsapi").click(function( event ) { 
		var action = "projectsapi.json";			
		getJson(action);
	});
	$("#tags").click(function( event ) { 
		var action = "tags.json";			
		getJson(action);
	});
	$("#people").click(function( event ) { 
		var action = "people.json";			
		getJson(action);
	});
	$("#expenses").click(function( event ) { 
		var action = "expenses.json";			
		getJson(action);
	});
	$("#milestones").click(function( event ) { 
		var action = "milestones.json";			
		getJson(action);
	});
	$("#tasklists").click(function( event ) { 
		var action = "tasklists.json";			
		getJson(action);
	});
	$("#todolistitems").click(function( event ) { 
		var action = "todolistitems.json";			
		getJson(action);
	});
	$("#timetracking").click(function( event ) { 
		var action = "timetracking.json";			
		getJson(action);
	});
	
	
	
	
	function getJson(action){
		$("#contentDinamic").html("Load ...");
		$.ajax({
			url: 'https://' + company + '.teamwork.com/' + action,
			headers: {"Authorization": "BASIC " + window.btoa(key + ":xxx")}
			 ,type			:"GET"
			,success		: function(json){
							var stringJson = ""; 
							$.each(json, function(index, value) {
							    stringJson = json[index][0];
							    return false;
							    
							}); 
							
							$("#contentDinamic").html(JSON.stringify(stringJson,null,2));
						  	}
						
			,error 		: function(e){ console.log(e); }
		});
	};
	 
 });
	