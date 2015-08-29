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

//= require tinymce-jquery
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

  var nextChosenId = 0;

  $('[option_selected=true]').on('change',function(e){
        $this = $(this);
        $option_target = $this.next().next()
        $option_target.attr('id','target-'+nextChosenId++);
        $.get('/admin/options.js',{'options_class': $this.val(), 'chosen_id': '#'+$option_target.attr('id')});
      });


  $(document).on('nested:fieldAdded',function(event){
    var field = event.field;
    var class_select = $('[option_select=true]', field);
    var chosen = $('.chosen', field);
    chosen.attr('id','target-'+nextChosenId++);
    chosen.chosen();
    class_select.each(function(){
      $(this).on('change',function(e){
        $.get('/admin/options.js',{'options_class': $(this).val(), 'chosen_id': '#'+chosen.attr('id')});
      });
    });
  });

  $('[data-type=toggle]').each(function(){
    $btn = $(this);
    $btn.on('click',function(){
      $($btn.data('to')).toggleClass('hide');
      return false;
    });
  });

  // tinyMCE.init({
  //   selector: 'textarea.tinymce'
  // });
  tinyMCE.init({
    selector: 'textarea.tinymce',
    plugins: ["advlist autolink lists link image charmap print preview hr anchor pagebreak", "searchreplace wordcount visualblocks visualchars code fullscreen", "insertdatetime media nonbreaking save table contextmenu directionality", "emoticons template paste textcolor colorpicker textpattern uploadimage"],
    toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent",
    toolbar2: "print preview media | forecolor backcolor emoticons | link image uploadimage",
    image_advtab: true,
    templates: [
      {
        title: "Test template 1",
        content: "Test 1"
      }, {
        title: "Test template 2",
        content: "Test 2"
      }
    ],
    image_advtab: true,
    uploadimage_form_url: '/admin/tinymce_assets',
    convert_urls: false
  });
    
});