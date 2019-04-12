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



// Adding smooth scroll for anchor tags:

// Attempt:
// $(document).ready(function(){
//     $( "a.scrollLink" ).click(function( event ) {
//         event.preventDefault();
//         $("html, body").animate({ scrollTop: $($(this).attr("href")).offset().top }, 800);
//     });
// });



// Attempt:
// Add smooth scrolling on all links on experiment show page:
// $(document).ready(function(){
//   $("#experimentShowDiv a").on('click', function(event) {
//     // Make sure this.hash has a value before overriding default behavior
//     if (this.hash !== "") {
//       // Prevent default anchor click behavior
//       event.preventDefault();
//       // Store hash
//       var hash = this.hash;
//       // Using jQuery's animate() method to add smooth page scroll
//       // The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
//       $('html, body').animate({
//         scrollTop: $(hash).offset().top
//       }, 800, function(){
//       // Add hash (#) to URL when done scrolling (default click behavior)
//         window.location.hash = hash;
//       });
//     } // End if
//   });
// });



// Attempt:
// $('a[href*="#"]').on('click', function (e) {
//   e.preventDefault();

//   $('html, body').animate({
//     scrollTop: $($(this).attr('href')).offset().top
//   }, 800, 'linear');
// });


// Attempt:
  // function ea_scroll( hash ) {
  //   var target = $( hash );
  //   target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
  //   if (target.length) {
  //     var top_offset = 0;
  //     if ( $('.site-header').css('position') == 'fixed' ) {
  //       top_offset = $('.site-header').height();
  //     }
  //     if( $('body').hasClass('admin-bar') ) {
  //       top_offset = top_offset + $('#wpadminbar').height();
  //     }
  //      $('html,body').animate({
  //        scrollTop: target.offset().top - top_offset
  //     }, 1000);
  //     return false;
  //   }
  // }



// Attempt:
// var $root = $('html, body');

// $('a[href^="#"]').click(function() {
//     var href = $.attr(this, 'href');

//     $root.animate({
//         scrollTop: $(href).offset().top
//     }, 800, function () {
//         window.location.hash = href;
//     });

//     return false;
// });



// Attempt #1:
// var $root = $('html, body');

// $('a[href^="#"]').click(function () {
//     $root.animate({
//         scrollTop: $( $.attr(this, 'href') ).offset().top
//     }, 1000);

//     return false;
// });



// Attempt 2:
// $(document).on('click', 'a[href^="#"]', function (event) {
//     event.preventDefault();

//     $('html, body').animate({
//         scrollTop: $($.attr(this, 'href')).offset().top
//     }, 800);
// });

// $('a').click(function(){
//     $('html, body').animate({
//         scrollTop: $( $(this).attr('href') ).offset().top
//     }, 800);
//     return false;
// });


// Attempt 3:
// $('a').click(function(){
//     $('html, body').animate({
//         scrollTop: $( $.attr(this, 'href') ).offset().top
//     }, 800);
//     return false;
// });


// Attempt 4:
// document.querySelectorAll('a[href^="#"]').forEach(anchor => {
//     anchor.addEventListener('click', function (e) {
//         e.preventDefault();

//         document.querySelector(this.getAttribute('href')).scrollIntoView({
//             behavior: 'smooth'
//         });
//     });
// });



// $("#stepClick").click(function() {
//     $('html, body').animate({
//         scrollTop: parseInt($("#steps").offset().top)
//     }, 1000);
// });



// Adding smooth scroll for anchor tags:

// // Select all links with hashes
// $('a[href*="#"]')
//   // Remove links that don't actually link to anything
//   .not('[href="#"]')
//   .not('[href="#0"]')
//   .click(function(event) {
//     // On-page links
//     if (
//       location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') 
//       && 
//       location.hostname == this.hostname
//     ) {
//       // Figure out element to scroll to
//       var target = $(this.hash);
//       target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
//       // Does a scroll target exist?
//       if (target.length) {
//         // Only prevent default if animation is actually gonna happen
//         event.preventDefault();
//         $('html, body').animate({
//           scrollTop: target.offset().top
//         }, 1000, function() {
//           // Callback after animation
//           // Must change focus!
//           var $target = $(target);
//           $target.focus();
//           if ($target.is(":focus")) { // Checking if the target was focused
//             return false;
//           } else {
//             $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
//             $target.focus(); // Set focus again
//           };
//         });
//       }
//     }
//   });