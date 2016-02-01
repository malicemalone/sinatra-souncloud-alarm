require 'sinatra'

get '/' do
	erb :index
end

post '/' do
# fire_at = params["time"] - Time.now

time = params[:time]
phone = params[:phone]

p time

erb :show
end