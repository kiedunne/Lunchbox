
  $(document).ready(function(){
    $("#signup-button").click(function(){
      $("#formGroupSignUp").fadeIn();
    });
    $("#close-button").click(function(){
      $("#formGroupSignUp").fadeOut();
    });
    $("#signin-button").click(function(){
      $("#formGroupSignIn").fadeIn();
    });
    $("#close-signin-button").click(function(){
      $("#formGroupSignIn").fadeOut();
    });
  });

function veggieAdd() {
  var Diet = document.getElementById("diet-pref").value = "vegetarian";
}

function pesciAdd() {
  var Diet = document.getElementById("diet-pref").value = "pescetarian";
}

function veganAdd() {
  var Diet = document.getElementById("diet-pref").value = "vegan";
}

function lactoAdd() {
  var Diet = document.getElementById("diet-pref").value = "lacto-vegetarian";
}

function ovoAdd() {
  var Diet = document.getElementById("diet-pref").value = "ovo-vegetarian";
}

function omniAdd() {
  var Diet = document.getElementById("diet-pref").value = "standard";
}


function openNav() {
  document.getElementById("navbar-options").style.width = "250px";
}

function closeNav() {
  document.getElementById("navbar-options").style.width = "0";
}


$(document).ready(ready);
$(document).on('page:load', ready);

var ready;
ready = function() {

  function toggleSidebar() {
    $(".button").toggleClass("active");
    $("main").toggleClass("move-to-left");
    $(".sidebar-item").toggleClass("active");
  }

  $(".button").on("click tap", function() {
    toggleSidebar();
  });

  $(document).keyup(function(e) {
    if (e.keyCode === 27) {
      toggleSidebar();
    }
  });
};
