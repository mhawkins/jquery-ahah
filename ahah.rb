require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

mime :style, 'text/css'

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
  content_type :style
  sass :application
end