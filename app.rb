require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
    'hello'
end

get '/secret' do
    'Shhh!'
end

get '/cat' do
   @name = ["Amigo", "Misty", "Almond"].sample
   erb(:index)
end


