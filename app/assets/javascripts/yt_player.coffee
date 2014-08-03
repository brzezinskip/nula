$ ->
  $(".panel-primary").click ->
    src = $(@).find('a').attr('href').replace('watch?v=', 'embed/')
    src = src.replace('&feature=youtube_gdata_player','')
    src += "?autoplay=true"
    $("#yt_modal").modal "show"
    $("#yt_modal iframe").attr "src", src

  $("#yt_modal button").click ->
    $("#yt_modal iframe").removeAttr "src"
