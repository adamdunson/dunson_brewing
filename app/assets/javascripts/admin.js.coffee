$(document).ready ->
  $('.field .new-option').click ->
    $(this).hide()
    $(this).siblings('.select').prop('disabled', true)
    $(this).siblings('.new-option-fields').css('display', 'inline-block')

  $('.field .new-option-fields .cancel').click ->
    $(this).parent().hide()
    $(this).siblings('.select').prop('disabled', false)
    $(this).parent().parent().children('.new-option').show()
