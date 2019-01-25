function showDiv() {
   document.getElementById('UserPosts').style.display = "block";
}
function showComments() {
  var x = document.getElementById("UserComments");
if (x.style.display === "none") {
  x.style.display = "block";
} else {
  x.style.display = "none";
 }
}
