function hideAlert() {
  var alert = document.getElementsByClassName('alert')
  alert[0].style.height = '0px';
  alert[0].style.paddingTop = '0px'
  alert[0].style.paddingBottom = '0px'
  alert[0].style.border = '0px'
};

setTimeout(function(){
  hideAlert();
}, 2000);


setTimeout();
