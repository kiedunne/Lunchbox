$(document).ready(function(){
  var date = new Date();
  var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());

  $('#datepicker').datepicker({
    minDate: today
  });

  $('#location').click(function(){
    alert("entre")
  });

});

//
// $(document).ready(ready);
// $(document).on('page:load', ready);
//
// var ready;
// ready = function() {
//
//   $( function() {
//      $( "#datepicker" ).datepicker();
//    } );
//
//   var date = new Date();
//   var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());
//
//   $('#datepicker').datepicker({
//       minDate: today
//   });
//
// };
