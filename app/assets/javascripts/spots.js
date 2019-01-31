
$(document).ready(ready);
$(document).on('turbolinks:load', ready);

var ready;
ready = function() {
  $( "#today" ).click();
  $( function() {
     $( "#datepicker" ).datepicker();
   });

  var date = new Date();
  var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());

  $('#datepicker').datepicker({
      minDate: today,
      dateFormat: 'dd/mm/yy'
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

function DisplayList() {
  var x = document.getElementById("allspots");
  var y = document.getElementById("mapsrender");
    x.style.display = "block";
    y.style.display = "none";
    $("#list-spot").show();

}

function DisplayMap() {
  var x = document.getElementById("allspots");
  var y = document.getElementById("mapsrender");
    y.style.display = "block";
    x.style.display = "none";
    $("#list-spot").hide();
}
