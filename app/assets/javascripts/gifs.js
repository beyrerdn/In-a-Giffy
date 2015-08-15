// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/

// Figure out how to do this
function resetForm($form) {
    $form.find('input:url, select, textfield').val('');
    $form.find('input:radio, input:checkbox')
         .removeAttr('checked').removeAttr('selected');
}

$('#index').ready(function(){
  $('.gif').hover(function(){
    $(this).find('.vote').show()
  }, function() {
    $(this).find('.vote').hide();
  });
})

$('#index').on('updatelayout', function(){
  $('.gif').hover(function(){
    $(this).find('.vote').show()
  }, function() {
    $(this).find('.vote').hide();
  });
})
