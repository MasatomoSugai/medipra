
$(function(){
  $(document).ready(function() {
    $('.header_button').click(function(){
      $('.header_button__menu').stop(true, true).slideDown('fast');
    });
    $('#menu_close').click(function(e){
      $('.header_button__menu').stop(true, true).slideUp('fast');
      e.stopPropagation();
      // ↑↑親要素もクリックされたことになるのを防ぐために必要
    });
  });
});
