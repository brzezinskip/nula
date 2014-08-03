$ ->
  $(".panel-primary").click ->
    src = $(@).find('a').attr('href').replace('watch?v=', 'embed/')
    src = src.replace('&feature=youtube_gdata_player','')
    src += "?autoplay=true"
    console.log src
    $("#myModal").modal "show"
    $("#myModal iframe").attr "src", src

  $("#myModal button").click ->
    $("#myModal iframe").removeAttr "src"
