/**
 * Add Common JavaScript code like validatiors/Helper Functions Here...
 */
function getUrlParameters() {
   var sPageURL = decodeURIComponent(window.location.search.substring(1));
    var sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;
    var params = "{";
    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');
		var key = sParameterName[0];
		var value = validateRequestParamValue(sParameterName[1]);
		if(i== sURLVariables.length-1)
			params += '"'+key+'":"'+value +'"';
		else
			params += '"'+key+'":"'+value +'",';
    }
    params += "}";
    if(sURLVariables.length==1 && sURLVariables[0]=="")
    	return 
    return JSON.parse(params);
}
 
function validateRequestParamValue(value)
{
	if (value !== undefined && value !== null && value != "") {
        var flag = /^[ A-Za-z0-9_@.\\/#+-:]*$/.test(value);
        if (!flag) {
        	errorPage();
        }
	}
	return value;
}

function tweakCheckBox(obj, className) {

    var cbs = document.getElementsByClassName(className);
    for (var i = 0; i < cbs.length; i++) {
        cbs[i].checked = false;
    }
    obj.checked = true;
}

function errorPage(){
	window.location="error404.jsp";
}