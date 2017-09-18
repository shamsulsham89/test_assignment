// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require_tree .
//= require jquery
//= require bootstrap-sprockets
//= require best_in_place
//= require moment
//= require bootstrap-datetimepicker


$(document).ready(function(){
  $('#datetimepicker').datetimepicker({
    format: 'DD/MM/YYYY'
  });
});

$(document).ready(function() {
  /* Activating Best In Place */
  jQuery(".best_in_place").best_in_place();

  $('.best_in_place').bind("ajax:success", function () {
  	$(this).closest('tr').effect('highlight'); 
  });
});

function show_users(project_id){
	$.ajax({
    type: 'get',
    url: '/users/assigned_users',
    data: {
        "project_id" : project_id
    },
    success: function(){ }
  });
}

function assign_user_in_project(project_id){
	assign_user_id = $("#assign_user_id").val();
	$.ajax({
    type: 'get',
    url: '/users/assigned_users?assign_user_id='+assign_user_id,
    data: {
        "project_id" : project_id
    },
    success: function(){ }
  });
}