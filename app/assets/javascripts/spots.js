$( function() {
   $( "#datepicker" ).datepicker();
 } );

var date = new Date();
var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());

$('#datepicker').datepicker({
    minDate: today
});
