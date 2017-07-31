if (document.getElementsByClassName('alert').length > 0) {

  setTimeout(function(){
    hideAlert();
}, 1000000000);

  function hideAlert() {
  var alert = document.getElementsByClassName('alert')
  alert[0].style.height = '0px';
  alert[0].style.paddingTop = '0px'
  alert[0].style.paddingBottom = '0px'
  alert[0].style.border = '0px'
};

}
