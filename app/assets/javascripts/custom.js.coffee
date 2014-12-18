$(window).load ->
  container = document.querySelector("#container")
  msnry = undefined

  # initialize Masonry after all images have loaded
  imagesLoaded container, ->
  msnry = new Masonry(container,
    itemSelector: '.element'
    columnWidth: container.width / 4
    gutter: 0
    )
  return

$(document).ready ->
  #$("html, #sidebar").niceScroll
  #  cursorcolor: "#ffffff"
  #  cursorborder: "1px solid #ffffff"
  #  cursorwidth: 7
  #  cursorfixedheight: 100
  #  autohidemode: false
  #  zindex: 9999

  $('.fadein').addClass 'load'
  
  $.srSmoothscroll
    step: 55
    speed: 300
    ease: "linear"
 