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
        if d.include?(x.downcase)
            d[x.downcase]
        else
            x
        end
    end.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |x|
       puts word_substituter(x)
    end
end

def selective_tweet_shortener(tweets)
    put tweets
end
