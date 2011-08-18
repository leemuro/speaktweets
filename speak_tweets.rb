require 'rubygems'
require 'twitter'

last_max_id = 0

while true
    tweets = Twitter::Search.new.hashtag("burningriverdevs").no_retweets.fetch

    tweets.each do |tweet|
        if tweet.id > last_max_id
            last_max_id = tweet.id
            puts tweet[:text]
            system "say \"#{tweet[:text]}\""
        end
    end
end
