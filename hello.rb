# -*- coding: utf-8 -*-
require 'sinatra'
require 'rakuten_web_service'

#参考: https://github.com/k2works/sinatra_rakuten_api

get '/result' do
  puts params[:age]
  puts params[:sex]

  RakutenWebService.configuration do |c|
        c.application_id = ENV["APPID"]
        c.affiliate_id = ENV["AFID"]
  end
  # Use genre id to fetch genre object                                                                                                                          
  @rankings = RakutenWebService::Ichiba::Item.ranking(:age => params[:age], :sex => params[:sex])
  erb :item_ranking
end

get '/' do                                                                                  
  erb :index
end



