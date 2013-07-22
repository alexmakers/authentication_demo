require 'sinatra'
require 'data_mapper'
require './db'

get '/' do
  erb :index
end

post '/login' do
  @user = User.login params[:email], params[:password]
  
  if @user
    erb :success, locals: { action: 'Logged in' }
  else
    erb :error
  end
end

post '/register' do
  @user = User.create email: params[:email], password: params[:password]
  
  erb :success, locals: { action: 'Registered' }
end