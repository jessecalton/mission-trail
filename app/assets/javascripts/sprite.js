$(document).ready(function() {

if (gon.time <= 5) {
  var distance = "-300"
}
else if (gon.time >= 30) {
  var distance = "5000"
}
else {
var distance = gon.time - 70
}


console.log(distance)
$('.bar').css('left', distance + "px")
});
