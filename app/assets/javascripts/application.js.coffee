//= require jquery
//= require jquery.turbolinks
//= require jquery.ui.all
//= require jquery_ujs
//= require modernizr
//= require turbolinks
//= require_tree .
$(document).ready ->
  $('.fade-out').delay(1500).fadeOut()
  if !Modernizr.inputtypes.date
    $('.datepicker').attr('readonly', 'readonly').datepicker(dateFormat: 'yy-mm-dd')
