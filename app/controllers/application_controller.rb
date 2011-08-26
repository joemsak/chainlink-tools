class ApplicationController < ActionController::Base
  protect_from_forgery
  http_basic_authenticate_with :name => "juliehochstadter", :password => "chainlink" if Rails.env == 'production'
  
end
