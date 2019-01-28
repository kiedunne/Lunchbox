
  $(document).ready(function(){
    $("#signup-button").click(function(){
      $("#formGroup").fadeIn();
    });
    $("#close-button").click(function(){
      $("#formGroup").fadeOut();
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
