$(document).ready(function() {

if (gon.time <= 15) {
  var distance = "600px"
}
else {
var distance = gon.time * 40 + "px"
}


console.log(distance)
$('.bar').css('left', distance)
});
