// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery.ui.datepicker

//= require jquery.ui.slider

//= require jquery.timepicker

//= require chosen-jquery

//= require jquery_nested_form

//= require twitter/bootstrap
//= require unicorn

//= require_self

$(document).ready(function() {
  $('.datepicker').datepicker({
    dateFormat: "yy-mm-dd"
  });

  $(".datetimepicker").each(function(){
    $(this).datetimepicker({
      dateFormat: "yy-mm-dd",
      hourGrid: 4,
      minuteGrid: 10,
      stepMinute: 10
    });
  });

  $('select.chosen').chosen(
    {
      'allow_single_deselect': true
    });

  $(document).on('nested:fieldAdded',function(event){
    var field = event.field;
    var chosen = $('.chosen', field);
    chosen.chosen();
  });
});