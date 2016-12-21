Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['GITHUB_APP_ID'], ENV['GITHUB_APP_SECRET']
  provider :github, ENV['HEROKU_APP_ID'], ENV['HEROKU_APP_SECRET']
end
