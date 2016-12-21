$('#choose_ok').click(function(){
  $('.wish').removeClass('unprint');
  $('.wish-select').addClass('unprint');
  $('.wish-new').removeClass('unprint');
});

$('#choose_no').click(function(){
  $('.wish').addClass('unprint');
  $('.wish-select').addClass('unprint');
  $('.wish-new').addClass('unprint');
});

$('#wish_stock').click(function(){
  $('.wish-select').addClass('unprint');
  $('.wish-stock').removeClass('unprint');
});

$('#wish_property').click(function(){
  $('.wish-select').addClass('unprint');
  $('.wish-property').removeClass('unprint');
});

$('#wish_account').click(function(){
  $('.wish-select').addClass('unprint');
  $('.wish-account').removeClass('unprint');
});

$('#wish_motor').click(function(){
  $('.wish-select').addClass('unprint');
  $('.wish-motor').removeClass('unprint');
});

$('#wish_jewelry').click(function(){
  $('.wish-select').addClass('unprint');
  $('.wish-jewelry').removeClass('unprint');
});

$('#wish_other').click(function(){
  $('.wish-select').addClass('unprint');
  $('.wish-other').removeClass('unprint');
});



