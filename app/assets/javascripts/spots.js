
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

  $( function init() {
   var input = document.getElementById('location1');
   var autocomplete = new google.maps.places.Autocomplete(input);
   var map = new google.maps.Map(document.getElementById('okay'), {
     center: {lat: 50.869754630095834, lng: 4.353812903165801},
     zoom: 12
     });

   google.maps.event.addDomListener(window, 'load', init);
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
