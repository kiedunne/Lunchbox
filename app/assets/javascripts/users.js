function showDiv() {
   document.getElementById('UserPosts').style.display = "block";
   document.getElementById('UserFollowingPosts').style.display = "none";
};

 function showFollowedSpots() {
    document.getElementById('UserPosts').style.display = "none";
    document.getElementById('UserFollowingPosts').style.display = "block";
 };

function showComments() {
  var x = document.getElementById("UserComments");
if (x.style.display === "none") {
  x.style.display = "block";
} else {
  x.style.display = "none";
 }
}

function showDiet() {
  var x = document.getElementById("UserDiets");
if (x.style.display === "none") {
  x.style.display = "block";
} else {
  x.style.display = "none";
 }
}
