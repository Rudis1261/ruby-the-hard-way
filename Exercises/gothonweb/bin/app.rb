#!/usr/bin/env ruby

require 'sinatra'
require 'securerandom'

set :port, 8080
set :static, true
set :public_folder, 'static'
set :views, 'views'
set :sessions, true

get '/' do
  return 'Hello world'
end

get '/hello/?' do
  if session[:name]
    erb :index, :locals => {'greeting' => session[:greeting], 'name' => session[:name], 'filename' => nil}
  else
    erb :hello_form
  end
end

get '/logout' do
  session.clear
  erb :hello_form
end

post '/hello/?' do
  greeting = !params[:greeting].empty? ? params[:greeting] : 'Hi There'
  name = !params[:name].empty? ? params[:name] : 'Anonymous'
  session[:name] = name
  session[:greeting] = greeting

  if params[:file] && !params[:file].empty?
    @filename = SecureRandom.uuid + File.extname(params[:file][:filename])
    tmpFile = params[:file][:tempfile].read
    File.open("./static/uploads/#{@filename}", 'wb') do |f|
      f.write(tmpFile)
    end
  end

  erb :index, :locals => {'greeting' => greeting, 'name' => name, 'filename' => @filename}
end