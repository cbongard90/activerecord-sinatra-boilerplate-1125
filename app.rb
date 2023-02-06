require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

get "/" do
  @restaurants = Restaurant.all
  # all instances: index
  erb :index # embedded Ruby (HTML + Ruby)
end

get '/restaurants/:id' do
  id = params[:id]
  @restaurant = Restaurant.find(id)
  # single page: show
  erb :show
end

# get: receive from the server
# post: send data to the server

# Create a form
post '/restaurants' do
  name = params[:name]
  city = params[:city]

  Restaurant.create(name: name, city: city)
  redirect '/' # redirect to the homepage
end
