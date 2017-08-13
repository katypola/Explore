// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

// making sign in modal show and close
function signInModalShow(){
  document.getElementById('signInModal').style.display = "block";
  document.getElementById('signinDiv').style.display = "block";
  document.getElementById('userSignup').style.display = "none";
}
// making sign up form render from sign in form in modal
function signUpFormShow(){
  document.getElementById('signinDiv').style.display = "none";
  document.getElementById('userSignup').style.display = "block";
}
// making sign in form render from sign up form in modal
function signInFormShow(){
  document.getElementById('signinDiv').style.display = "block";
  document.getElementById('userSignup').style.display = "none";
}
// making modal close when you click "close" button
function closeSigninModal() {
  document.getElementById('signInModal').style.display = "none";
}

function closeModal() {
  document.getElementById('kitModal').style.display = "none";
  document.getElementById('signInModal').style.display = "none";
}