require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    'hello'
end

get '/secret' do
    'Shhh!'
end

get '/random-cat' do
   @name = ["Amigo", "Misty", "Almond"].sample
   erb(:index)
end

post '/named-cat' do
    p params
    @name = params[:name]
    erb(:index)
 end
 
get '/form' do
    erb(:index)
end
