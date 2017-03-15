$(document).ready(function(){
  console.log("called");

  $(".toggle").click(function() {
  console.log("click");
    var $currentToggle = $(this);
    var blockId = $currentToggle.attr("id");
    var targetContentId = blockId + "-content";

    $(".issues-replies-text").hide();
    $("#" + targetContentId).show();
  });

  $(".toggle").first().click();
});
