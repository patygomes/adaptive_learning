$ ->

  # x = "https://twitter.com/intent/tweet?text=Newton%E2%80%99s%20New%20Law%20of%20Teaching%3A%20When%20Quality%20Instruction%20and%20Technology%20Intersect&url=https%3A%2F%2Fwww.edsurge.com%2Fnews%2F2016-01-04-newton-s-new-law-of-teaching-when-quality-instruction-and-technology-intersect&via=EdSurge&hashtags=edtech"

  $tweet_quotes = $(".tweet-quote")

  if $tweet_quotes.length > 0

# via edsurge adds 13
# #adaptivelearning adds 18
# link adds <link length>

    addTwitterLinkToSpan = ($html_element) ->
      text = $html_element.text()
      page_url = window.location.href
      tweet_length = text.length
      console.log(text.length)
      if tweet_length > 140
        text = text.substring(0,137) + "..."
        tweet_length = 140
      encoded_text = encodeURIComponent(text)
      twitter_url = "https://twitter.com/intent/tweet?text=" + encoded_text
      if tweet_length + page_url.length + 1 <= 140
        twitter_url += "&url=" + page_url
        tweet_length += page_url.length + 1
      if tweet_length + 18 <= 140
       twitter_url += "&hashtags=AdaptiveLearning"
       tweet_length += 18
      if tweet_length + 13 <= 140
        twitter_url +=  "&via=EdSurge"
        tweet_length += 13
      $html_element.attr("href", twitter_url)
      $html_element.attr("target", "_blank")



    $tweet_quotes.each ->
      addTwitterLinkToSpan($(@))