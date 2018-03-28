#Arrays

test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish.",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]
banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

count = 0
array = []

test_tweets.each do |tweet|
  banned_phrases.each do |word|
    if tweet.include?(word)
      count += 1
    end
  end

  while count != 0
    banned_phrases.each do |word|
      if tweet.include?(word)
        tweet = tweet.split(word).join("CENSORED")
        count -= 1
      end
    end
  end
  array << tweet
end

puts array
