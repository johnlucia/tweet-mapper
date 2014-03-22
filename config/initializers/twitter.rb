module TweetMapper
  class Application < Rails::Application
    config.before_initialize do
      Twitter.configure do |config|
        config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
        config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
        # config.oauth_token = YOUR_OAUTH_TOKEN
        # config.oauth_token_secret = YOUR_OAUTH_TOKEN_SECRET
      end
    end
  end
end