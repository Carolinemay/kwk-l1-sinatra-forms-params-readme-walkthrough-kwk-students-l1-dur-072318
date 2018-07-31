require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
  end

  # Add your post route and action below
post '/food' do
  
  @name=params[:name]
  @favorite_food= params[:favorite_food]
  erb :food
end 
post '/snacc' do
  @name= params[:name]
  @favorite_food= params[:favorite_food]
  "You, #{@name} are so much of a snacc you're even better than #{@favorite_food}"
end
end
