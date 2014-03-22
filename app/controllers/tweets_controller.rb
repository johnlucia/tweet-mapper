class TweetsController < ApplicationController
  require "rubygems"
  require "twitter"
  require 'twitter/geo'
  def index
    @user = Twitter.user("johnlucia")
    @tweets = Twitter.user_timeline("johnlucia")
    @tweets.reject! {|tweet| tweet.geo.nil? }
  end
end
