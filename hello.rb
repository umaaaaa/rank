re 'rubygems'
require 'sinatra'
require 'haml'

configure :production do
end

get '/' do
  haml :index
end # end [post /]

post '/' do
  # 表示するメッセージのデフォルト値
  @message = "はい、こんにちは"
  # もし、送信された文字列が「hello world」じゃなかったらふてくされます
  @message = "\"hello world\"って言えよ" unless params[:str] == "hello world"
  haml :index
end # end [post /]end
