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

  $('a.openbox').colorbox
    rel: $('a.openbox').attr('class')
    #transition: "fade"
    speed: 500;
    current: "{current} из {total}"
    initialWidth: 200
    initialHeight: 200
    maxWidth: "98%"
    maxHeight: "96%"

  $('.fadein').addClass 'load'

  $("li.nav-item > a[href=\"" + @location.pathname + "\"]").parent().addClass "is-active"
  
  $.srSmoothscroll
    step: 55
    speed: 300
    ease: "linear"

  