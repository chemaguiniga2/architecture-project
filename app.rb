require 'sinatra'

get '/' do
  erb :login
end

get '/pregunta' do
  erb :pregunta
end