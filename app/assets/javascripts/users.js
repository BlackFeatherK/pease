function scorll() {
  $('body').stop().animate({scrollTop:$('body').height()}, '500', 'swing');
}

$(document).ready(function(){

  //  user/question
  $('.intangible_asset').hide();
  $('.personal_item').hide();
  $('.afterlife_service').hide();
  $('.digital').hide();
  $('.question-submit').hide();


  function scorll() {
    $('body').stop().animate({scrollTop:$('body').height()}, '500', 'swing');
  }

  $(document).on('click', '.user_tangible_asset_true', function(){
    $('.intangible_asset').stop().slideDown(500);
  });
  $(document).on('click', '.user_tangible_asset_false', function(){
    $('.intangible_asset').stop().slideDown(500)
  });
  $(document).on('click', '.user_intangible_asset_true', function(){
    $('.personal_item').stop().slideDown(500)
  });
  $(document).on('click', '.user_intangible_asset_false', function(){
    $('.personal_item').stop().slideDown(500)
  });
  $(document).on('click', '.user_personal_item_true', function(){
    $('.afterlife_service').stop().slideDown(500)
  });
  $(document).on('click', '.user_personal_item_false', function(){
    $('.afterlife_service').stop().slideDown(500)
  });
  $(document).on('click', '.user_afterlife_service_true', function(){
    $('.digital').stop().slideDown(500)
  });
  $(document).on('click', '.user_afterlife_service_false', function(){
    $('.digital').stop().slideDown(500)
  });
  $(document).on('click', '.user_digital_true', function(){
    $('.submit').stop().slideDown(500)
  });
  $(document).on('click', '.user_digital_false', function(){
    $('.submit').stop().slideDown(500)
  });
});

  
