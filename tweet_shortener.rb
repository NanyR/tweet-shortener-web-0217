# Write your code here.
def word_substituter(tweet)
dictionary={
  hello: 'hi',
  to: '2',
  two: '2',
  too: '2',
  for: '4',
  four: '4',
  be: "b",
  you: "u",
  at: "@",
  and: "&"
}


  dictionary_words= dictionary.keys
  tweet_words=tweet.split(' ')
  short_tweet=tweet_words.collect do |word|
    if dictionary_words.include?(word.to_sym.downcase)
      word = dictionary[word.to_sym.downcase]
    end
      word
    end

  short_tweet.join(' ')
end

def bulk_tweet_shortener(tweets_array)
  tweets_array.each do|tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length >= 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length >=140
    truncated_tweet= tweet[0..136]
    word_substituter(truncated_tweet)
    truncated_tweet+='...'
  else
    word_substituter(tweet)
  end
end
