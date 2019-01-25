function showDiv() {
   document.getElementById('UserPosts').style.display = "block";
   document.getElementById('UserFollowingPosts').style.display = "none";
};

 function showFollowedSpots() {
    document.getElementById('UserPosts').style.display = "none";
    document.getElementById('UserFollowingPosts').style.display = "block";
 };

$('#datepicker').datepicker();
