function openForm() {
  document.getElementById("formGroup").style.display = "block";
}

function closeForm() {
  document.getElementById("formGroup").style.display = "none";
}

// The class you click to trigger the popup

$('#signup-button').on('click', function() {
  // The Overlay fades in
  $("#formGroup").fadeIn(200, function() {});
  // The Popup fades in just after
  // $(".popup").fadeIn(600, function() {});
});
