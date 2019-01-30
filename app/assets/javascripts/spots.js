
$(document).ready(ready);
$(document).on('page:load', ready);

var ready;
ready = function() {

  $( function() {
     $( "#datepicker" ).datepicker();
   } );

  var date = new Date();
  var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());

  $('#datepicker').datepicker({
      minDate: today
  });

};

function DisplayMap() {
  var x = document.getElementById("allspots");
  var y = document.getElementById("mapsrender");
  if (x.style.display === "none") {
  y.style.display = "none";
  x.style.display = "block";
  $('#mapsbutton').text("Show Full Map");
} else {
  x.style.display = "none";
  y.style.display = "block";
  $('#mapsbutton').text("Back to spots");
}
}
