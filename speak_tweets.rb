require 'rubygems'
require 'twitter'

tweets = Twitter::Search.new.hashtag("burningriverdevs").no_retweets.fetch

tweets.each do |tweet|
    puts tweet[:text]
    system "say \"#{tweet[:text]}\""
end
