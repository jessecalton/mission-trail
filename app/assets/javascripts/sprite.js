if (gon.time >= 30) {
  $('.bar').css("background", "url('/assets/blank.png')")
}

if (gon.time <= 5) {
  var distance = "-300"
  $('.bar').css('left', distance + "px")
}
else {
  var distance = gon.time - 70
  $('.bar').css('left', distance + "px")
}

