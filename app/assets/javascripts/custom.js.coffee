$(document).ready ->
  #$("html, #sidebar").niceScroll
  #  cursorcolor: "#ffffff"
  #  cursorborder: "1px solid #ffffff"
  #  cursorwidth: 7
  #  cursorfixedheight: 100
  #  autohidemode: false
  #  zindex: 9999

  $container = $('#container')
  $container.imagesLoaded ->
    $container.masonry
      itemSelector: '.element'
      columnWidth: $('#container').width / 3
      gutter: 0

  $('a.portrait').colorbox
    rel: 'portrait'
    #transition: "fade"
    speed: 500;
    current: "{current} из {total}"
    initialWidth: 200
    initialHeight: 200
    maxWidth: "98%"
    maxHeight: "96%"

  $('.fadein').addClass 'load'
  
  $.srSmoothscroll
    step: 55
    speed: 300
    ease: "linear"
 