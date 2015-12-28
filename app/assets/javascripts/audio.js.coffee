$ ->

  $audio_player = $(".js-audio-player")
  $audio_mp3 = $(".js-audio-player-mp3")
  $play_button = $(".js-audio-player-play-button")
  $pause_button = $(".js-audio-player-pause-button")

  if $audio_player.length > 0
    # TODO: Need ogg and mp3
    audio = new Audio($audio_mp3.attr("src"))
    buttons = $play_button
    play_image = $play_button.attr("src")
    pause_image = $play_button.attr("src")
    is_playing = false

    $play_button.click ->
      audio.play()
      is_playing = true
      $play_button.hide()
      $pause_button.show()

    $pause_button.click ->
      audio.pause()
      $play_button.show()
      $pause_button.hide()
      is_playing = false


    play_toggle = () ->
      if is_playing
      else

