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
  document.getElementById('signInModal').className = "signin";
}
// making sign up form render from sign in form in modal
function signUpFormShow(){
  document.getElementById('signInModal').className = "signup";
  document.getElementById('signinDiv').style.display = "none";
  document.getElementById('userSignup').style.display = "block";
}
// making sign in form render from sign up form in modal
function signInFormShow(){
  document.getElementById('signinDiv').style.display = "block";
  document.getElementById('userSignup').style.display = "none";
  document.getElementById('signInModal').className = "signin";
}
// making modal close when you click "close" button
function closeSigninModal() {
  document.getElementById('signInModal').style.display = "none";
  document.getElementById('signInModal').className = "modal";
}

function closeModal() {
  document.getElementById('kitModal').style.display = "none";
  document.getElementById('signInModal').style.display = "none";
}


// $("#stepClick").click(function() {
//     $('html, body').animate({
//         scrollTop: parseInt($("#steps").offset().top)
//     }, 1000);
// });



// Adding smooth scroll for anchor tags:

// Select all links with hashes
$('a[href*="#"]')
  // Remove links that don't actually link to anything
  .not('[href="#"]')
  .not('[href="#0"]')
  .click(function(event) {
    // On-page links
    if (
      location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
      && 
      location.hostname == this.hostname
    ) {
      // Figure out element to scroll to
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
      // Does a scroll target exist?
      if (target.length) {
        // Only prevent default if animation is actually gonna happen
        event.preventDefault();
        $('html, body').animate({
          scrollTop: target.offset().top
        }, 1000, function() {
          // Callback after animation
          // Must change focus!
          var $target = $(target);
          $target.focus();
          if ($target.is(":focus")) { // Checking if the target was focused
            return false;
          } else {
            $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
            $target.focus(); // Set focus again
          };
        });
      }
    }
  });