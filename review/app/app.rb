require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'mysql2'
require './models/Review.rb'

#
# Reviewサービス
#
class ReviewApplication < Sinatra::Base

    #
    # Reviewデータ全権取得
    #
    get '/' do
   
    response = {reviews: Review.all}

    return response.to_json
    end
end