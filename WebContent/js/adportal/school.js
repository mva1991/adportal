$(document).ready(pageSpecificReady);

function pageSpecificReady() {
    setupSchoolDataTable();
}

var schoolGrid;
var schoolColumns = [{ // Responsive control column
    data: null,
    defaultContent: '',
    className: 'control',
    orderable: false
},{
    "data": "id"
},  {
    "data": "name"
}, {
    "data": "principal"
}, {
    "data": "website"
}, {
    "data": "skype"
}, {
    "data": "landline",
}, {
    "data": "mobile",
}, {
    "data": "location",
}, ];

function setupSchoolDataTable() {
    if (schoolGrid) {
        schoolGrid.ajax.reload(false);
        return;
    }
    
    $.get('rest/school/list',function(data){
        schoolGrid = $('#schoolGrid').DataTable({
            buttons: [{
                text: '<i class="fa fa-plus-square" aria-hidden="true"></i>',
                titleAttr: 'Add',
                action: addSchool
            }, {
                text: '<i class="fa fa-pencil" aria-hidden="true"></i>',
                titleAttr: 'Modify',
                action: modifySchool
            }, {

                text: '<i class="fa fa-trash" aria-hidden="true"></i>',
                titleAttr: 'Delete',
                action: deleteSchool

            }, {
                extend: 'excelHtml5',
                text: '<i class="fa fa-table"></i>',
                titleAttr: 'Export to spreadsheet'
            }, ],
            "pageLength": 20,
            "lengthChange": false,
            "responsive": true,
            "pagingType": "full_numbers",
            data : data.data,
            order: [],
            select: true,
            "columns": schoolColumns,
            "columnDefs": [
                {
                    "targets": [ 1 ],
                    "visible": false
                }
            ]
        });
        
        schoolGrid.buttons().container()
        .appendTo( $('div.eight.column:eq(0)', schoolGrid.table().container()) );       
        $('#schoolGrid tbody').on(
                'dblclick',
                'tr',
                function() {
                    var rowData = schoolGrid.row(this).data();
                    window.location = 'school_details?id=' + rowData.id;
                });
    });

}


function addSchool() {
	window.location = 'school_details';
}

function modifySchool() {
    var selectedRows = $('#schoolGrid').DataTable().rows({selected: true }).data().toArray();
    if(selectedRows){
    	window.location = 'school_details?id=' + selectedRows[0].id;
    }
}

function deleteSchool() {
    var selectedRows = $('#schoolGrid').DataTable().rows({selected: true }).data().toArray();
    if(selectedRows){
    	var id = selectedRows[0].id;
        $.ajax({
            type: "POST",
            url: "rest/school/delete?id="+id,
            //contentType: 'application/json; charset=utf-8',
            success: function(data) {
            	schoolGrid = null;
            	setupSchoolDataTable();
            },
            error: function(msg) {
            	console.log('something bad');
            }
        });
    }
    
    

}