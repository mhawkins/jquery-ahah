require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

get '/' do
  haml :home
end

get '/name.?:format?' do
  case params[:format]
  when "js"
    haml :name, :layout => false
  else
    haml :name
  end
end

get '/stylesheets/application.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass :application
end