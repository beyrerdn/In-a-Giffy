// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

// Figure out how to do this
function resetForm($form) {
    $form.find('input:url, select, textfield').val('');
    $form.find('input:radio, input:checkbox')
         .removeAttr('checked').removeAttr('selected');
}

$(document).on('mouseenter', '.gif', function() {
  $(this).find('.vote').show();
});

$(document).on('mouseleave', '.gif', function() {
  $(this).find('.vote').hide();
});
