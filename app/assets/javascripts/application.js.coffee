//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require modernizr
//= require turbolinks
//= require_tree .
$(document).ready ->
  $('.fade-out').delay(1500).fadeOut()
  $('.datepicker').datepicker() if !Modernizr.inputtypes.date
