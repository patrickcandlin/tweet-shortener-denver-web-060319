# Write your code here.
def d 
dictionary = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@", 
    "and" => "&",
}
dictionary
end
def word_substituter(tweet)
    tweet.split(" ").map do |x|
        d.include?(x.downcase) ? d[x.downcase] : x
    end.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |x|
       puts word_substituter(x)
    end
end

def selective_tweet_shortener(tweets)
    tweets.length > 140 ? word_substituter(tweets) : tweets
end

def shortened_tweet_truncator(tweet)
    selective_tweet_shortener(tweet).length > 140 ? selective_tweet_shortener(tweet)[0..139] : selective_tweet_shortener(tweet)
end