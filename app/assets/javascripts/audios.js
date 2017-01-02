$(document).ready(function(){

  $('.audio-person').hide();
  $('.audio-choose').hide();
  $('article').hide();
  $('section').hide();
  $('.audio-sub').hide();
  $('.message-text').hide();

  $('.audio_heir_true').click(function(){
    $('.audio-person').stop().slideDown(800);
    $('.audio-choose').stop().slideDown(800);
    scorll();
  });
  $('.audio_heir_false').click(function(){
    $('.audio-person').stop().slideUp(800);
    $('.audio-choose').stop().slideDown(800);
    scorll();
  });

  $('.audio-video').click(function(){
    $('.audio-submit').hide();
    $('.message-text').stop().slideUp(800);
    $('section').stop().slideDown(800);
    $('article').stop().slideDown(800);
    $('.audio-submit').stop().slideDown(800);
  });

  $('.audio-message').click(function(){
    $('.audio-submit').hide();
    $('.audio-submit').stop().slideUp(800);
    $('section').stop().slideUp(800);
    $('article').stop().slideUp(800);
    $('.message-text').stop().slideDown(800);
    $('.audio-submit').stop().slideDown(800);
  });

});
  