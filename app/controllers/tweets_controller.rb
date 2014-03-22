class TweetsController < ApplicationController
  def index
    twitter_handle = params[:handle] || "johnlucia"
    @user = Twitter.user(twitter_handle)
    @tweets = Twitter.user_timeline(twitter_handle)
    @tweets.reject! {|tweet| tweet.geo.nil? }
  end
end
