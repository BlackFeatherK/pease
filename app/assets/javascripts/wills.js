$(document).ready(function(){

  $('.wish').hide();
  $('.wish-select').hide();
  $('.wish-new').hide();
  $('.wish-stock').hide();
  $('.wish-property').hide();
  $('.wish-account').hide();
  $('.wish-motor').hide();
  $('.wish-wish_jewelry').hide();
  $('.wish-other').hide();
  $('.next').hide()

  $('#choose_ok').click(function(){
    $('.wish').show();
    $('.wish-select').hide();
    $('.wish-new').stop().slideDown(500);
    scorll();
  });

  $('#choose_no').click(function(){
    $('.next').stop().slideUp(500);
    $('.wish-select').stop().slideUp(500);
    $('.wish').stop().slideUp();
    $('.wish-new').hide();

    scorll();
  });

  $('#wish_stock').click(function(){
    $('.wish-select').stop().slideUp(500);
    $('.next').hide();
    $('.wish-stock').stop().slideDown(500, function(){
      $('.next').show();
    });
    scorll();
  });

  $('#wish_property').click(function(){
    $('.wish-select').stop().slideUp(500);
    $('.next').hide();
    $('.wish-property').stop().slideDown(500, function(){
      $('.next').show();
    });
    scorll();
  });

  $('#wish_account').click(function(){
    $('.wish-select').stop().slideUp(500);
    $('.next').hide();
    $('.wish-account').stop().slideDown(500, function(){
      $('.next').show();
    });
    scorll();
  });

  $('#wish_motor').click(function(){
    $('.wish-select').stop().slideUp(500);
    $('.next').hide();
    $('.wish-motor').stop().slideDown(500, function(){
      $('.next').show();
    });
    scorll();
  });

  $('#wish_jewelry').click(function(){
    $('.wish-select').stop().slideUp(500);
    $('.next').hide();
    $('.wish-jewelry').stop().slideDown(500, function(){
      $('.next').show();
    });
    scorll();
  });

  $('#wish_other').click(function(){
    $('.wish-select').stop().slideUp(500);
    $('.next').hide();
    $('.wish-other').stop().slideDown(500, function(){
      $('.next').show();
    });
    scorll();
  });

  $(document).on("click", "input[type=checkbox]", function () {
    $(this).closest('fieldset').hide(); 
  });
   

});
  


