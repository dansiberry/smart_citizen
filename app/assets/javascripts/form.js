function formSwap () {
  var loggedIn = document.getElementsByClassName('logged-in-form');
  var notLoggedIn = document.getElementsByClassName('sign-up-hidden');
  var belowForm = document.getElementsByClassName('below-form');

  loggedIn[0].style.opacity = '0';
  loggedIn[0].style.height = '0px';
  loggedIn[0].style.overflow = 'hidden';
  belowForm[0].style.opacity = '0';
  belowForm[0].style.height = '0px';
  belowForm[0].style.overflow = 'hidden';
  window.scrollTo(-300, 0);
  notLoggedIn[0].style.height = '100%';
  notLoggedIn[0].style.opacity = '1';
}
