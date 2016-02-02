require 'sinatra'
require 'dotenv'
Dotenv.load
require_relative 'helper'
set :root, File.dirname(__FILE__)
TWILIO_SID = ENV["twilio_api_sid"]
TWILIO_AUTH  = ENV["twilio_api_auth"]


get '/' do


erb :index
end

post '/' do

# fire_at = params["time"] - Time.now
@genre = params[:genre].downcase
@time = params[:time]
@phone = params[:phone]
result = check_phone(@phone)

if result == 0 && @time.length == 5
	#api action
else
	@message = "There was a problem with your request"
end

erb :show
end

delete '/' do

redirect '/'
end