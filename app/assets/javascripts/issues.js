$(document).ready(function(){

  $(".toggle").click(function() {
    var $currentToggle = $(this);
    var blockId = $currentToggle.attr("id");
    var targetContentId = blockId + "-content";

    $(".issues-replies-text").hide();
    $("#" + targetContentId).show();
  });

  $(".toggle").first().click();
});
