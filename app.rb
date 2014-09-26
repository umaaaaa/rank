# coding:utf-8

require 'rubygems'
require 'sinatra'
require 'haml'

configure :production do
end

get '/' do
  haml :index
end

post '/' do
  @message = "Hello"
  @message = "Say hello world" unless params[:str] == "hello world"
  haml :index
end
