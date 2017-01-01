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
    $('.wish-new').stop().slideDown(1000);
    scorll();
  });

  $('#choose_no').click(function(){
    $('.next').stop().slideUp(1000);
    $('.wish-select').stop().slideUp(1000);
    $('.wish').stop().slideUp();
    $('.wish-new').hide();
    scorll();
  });

  $('#wish_stock').click(function(){
    $('.wish-select').stop().slideUp(800);
    $('.next').hide();
    $('.wish-stock').stop().slideDown(800, function(){
      $('.next').show();
    });
  });

  $('#wish_property').click(function(){
    $('.wish-select').stop().slideUp(800);
    $('.next').hide();
    $('.wish-property').stop().slideDown(800, function(){
      $('.next').show();
    });
  });

  $('#wish_account').click(function(){
    $('.wish-select').stop().slideUp(800);
    $('.next').hide();
    $('.wish-account').stop().slideDown(800, function(){
      $('.next').show();
    });
  });

  $('#wish_motor').click(function(){
    $('.wish-select').stop().slideUp(800);
    $('.next').hide();
    $('.wish-motor').stop().slideDown(800, function(){
      $('.next').show();
    });
  });

  $('#wish_jewelry').click(function(){
    $('.wish-select').stop().slideUp(800);
    $('.next').hide();
    $('.wish-jewelry').stop().slideDown(800, function(){
      $('.next').show();
    });
  });

  $('#wish_other').click(function(){
    $('.wish-select').stop().slideUp(800);
    $('.next').hide();
    $('.wish-other').stop().slideDown(800, function(){
      $('.next').show();
    });
  });

  $(document).on("click", "input[type=checkbox]", function () {
    $(this).closest('fieldset').hide(); 
  });
   

});
  


