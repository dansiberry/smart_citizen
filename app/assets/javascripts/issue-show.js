$(document).ready(function(){
  setTimeout (function() {
  $('.issues-upvote').attr('data-balloon-visible', true)
 }, 900);

  setTimeout (function() {
  $('.issues-upvote').removeAttr('data-balloon-visible')
 }, 30000);
});
