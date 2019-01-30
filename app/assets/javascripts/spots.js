
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

  $(function(){
    $("#mapper").click(function(){
      var a = document.getElementById("allspots");
      var b = document.getElementById("mapsrender")
      if (a.style.display === "none") {
        a.style.display = "block";
        b.style.display = "none";
      } else {
        a.style.display = "none";
        b.style.display = "block";
      }
    });
  });

};

function DisplayMap() {
  var x = document.getElementById("allspots");
  var y = document.getElementById("mapsrender");
  if (x.style.display === "none") {
  y.style.display = "none";
  x.style.display = "block";
} else {
  x.style.display = "none";
  y.style.display = "block";
}
}

function changeImage() {
  var image = document.getElementById("mapper");
  if (image.src.match("map")) {
    image.src = "/images/pic_list.png";
  } else {
    image.src = "/images/pic_map.png"
  }
}
