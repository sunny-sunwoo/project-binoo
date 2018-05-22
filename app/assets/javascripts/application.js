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
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .

function checkNo(id) {
	$("#"+id).css("background-color" , "#ff9ff3");
	$("#"+id).siblings().css("background-color" , "#fff");
}

function checkMaybe(id) {
	$("#"+id).css("background-color" , "#c8d6e5");
	$("#"+id).siblings().css("background-color" , "#fff");
}

function checkYes(id) {
	$("#"+id).css("background-color" , "#54a0ff");
	$("#"+id).siblings().css("background-color" , "#fff");
}