$ ->

  $carousel = $(".carousel")
  $carousel_body = $(".carousel-body")
  $carousel_left_button = $(".carousel-button-left")
  $carousel_right_button = $(".carousel-button-right")

  if $carousel.length > 0 && $carousel_body.length > 0

    $carousel_body
    current_position = 0
    max_position = $(".carousel-body").attr("data-carousel-items") - 2

    $carousel_body.css("width", (100 * (max_position + 2) / 3) + "%")

    checkToGreyButtons = () ->
      if current_position == 0
        $carousel_left_button.addClass("carousel-button-disabled")
      else
        $carousel_left_button.removeClass("carousel-button-disabled")
      if current_position >= max_position - 1
        $carousel_right_button.addClass("carousel-button-disabled")
      else
        $carousel_right_button.removeClass("carousel-button-disabled")

    checkToGreyButtons()

    $carousel_left_button.click ->
      if current_position > 0
        current_position--
        $carousel_body.animate({left: (-100 * current_position / 3) + "%"}, 'fast')
        checkToGreyButtons()

    $carousel_right_button.click ->
      if current_position < max_position - 1
        current_position++
        $carousel_body.animate({left: (-100 * current_position / 3) + "%"}, 'fast')
        checkToGreyButtons()

