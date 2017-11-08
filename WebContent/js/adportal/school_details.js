/**
 *
 */
var SCHOOL_ID;
var EDIT = false;

$(document).ready(pageSpecificReady);

function pageSpecificReady() {
    getUrlParamsJson();
    if (EDIT) {
        setupEditPage();
    }
}


function getUrlParamsJson() {
    var params = getUrlParameters();
    if(params)
    	SCHOOL_ID = params.id;
    if (SCHOOL_ID != null) {
        EDIT = true;
    }
}

function setupEditPage() {
    $.get('rest/school/profile?id=' + SCHOOL_ID, function(data) {
        if (data) {
        	console.log(JSON.stringify(data));
            $("#schoolForm1 input[id=name]").val(data.name);
            $("#schoolForm1 input[id=principal]").val(data.principal);
            $("#schoolForm1 input[id=landline]").val(data.landline);
            $("#schoolForm1 input[id=mobile]").val(data.mobile);
            $("#schoolForm1 input[id=website]").val(data.website);
            $("#schoolForm1 input[id=skype]").val(data.skype);
            $("#schoolForm1 input[id=email]").val(data.email);

            $("#schoolForm2 input[id=city]").val(data.city);
            $("#schoolForm2 input[id=street]").val(data.street);
            $("#schoolForm2 input[id=zip]").val(data.zip);
            $("#schoolForm2 input[id=mandal]").val(data.mandal);
            $("#schoolForm2 input[id=district]").val(data.district);
            $("#schoolForm2 input[id=state]").val(data.state);
            var id;
            if (data.isgovt) {
                id = '#establishmentDesc' + data.isgovt
                $(id).prop('checked', true);
            }
            if (data.board) {
                id = '#boardDes' + data.isgovt
                $(id).prop('checked', true);
            }
            if (data.educationMode) {
                id = '#educationModeDesc' + data.educationMode;
                $(id).prop('checked', true);
            }
            if (data.drinkingwater_facility) {
                id = "#drinkingWaterDesc" + data.drinkingwater_facility;
                $(id).prop('checked', true);
            }
            if (data.sanitation_facility) {
                id = "#sanitationFacilityDesc" + data.sanitation_facility;
                $(id).prop('checked', true);
            }
            if (data.ratio) {
                id = '#rDesc' + data.ratio;
                $(id).prop('checked', true);
            }
            if (data.electricity) {
                id = '#electrictyDesc' + data.electricity;
                $(id).prop('checked', true);
            }
            if (data.health_check_freq) {
                id = '#healthDesc' + data.health_check_freq;
                $(id).prop('checked', true);
            }
            if (data.environment) {
                id = '#envDesc' + data.environment;
                $(id).prop('checked', true);
            }
            if (data.distance_from_main_road) {
                id = '#distanceDesc' + data.distance_from_main_road;
                $(id).prop('checked', true);
            }
            if (data.powerbackup) {
                id = '#powerBackup' + data.powerbackup;
                $(id).prop('checked', true);
            }
            if (data.internet_facility) {
                id = '#internetFacilityDesc' + data.internet_facility;
                $(id).prop('checked', true);
            }
            if (data.misc)
                $("#schoolForm3 textarea[id=miscInfo]").val(data.misc);
            Materialize.updateTextFields();
        }
    });


}

function submitHandler() {
    var schoolForm1Data = form2js('schoolForm1', '.', false);
    var schoolForm2Data = form2js('schoolForm2', '.', false);
    var schoolForm3Data = form2js('schoolForm3', '.', false);
    var payload = $.extend({}, schoolForm1Data, schoolForm2Data);
    payload = $.extend(payload, schoolForm3Data);
    if (EDIT) {
        payload.id = SCHOOL_ID;
        sendEditRequest(payload);
    }else{
    	sendCreateRequest(payload);
    }
    

}

function sendCreateRequest(data){
	console.log(JSON.stringify(data));
    $.ajax({
        type: "POST",
        url: "rest/school/create",
        contentType: 'application/json; charset=utf-8',
        dataType: "json",
        data: JSON.stringify(data),
        success: function(data) {
        	window.location = 'school';
        },
        error: function(msg) {
        	console.log('something bad');
        }
    });

}


function sendEditRequest(data){
    $.ajax({
        type: "POST",
        url: "rest/school/update",
        contentType: 'application/json; charset=utf-8',
        dataType: "json",
        data: JSON.stringify(data),
        success: function(data) {
        	window.location = 'school';
        },
        error: function(msg) {
        	console.log('something bad');
        }
    });
}
function cancelHandler() {
    window.location = 'school';
}

