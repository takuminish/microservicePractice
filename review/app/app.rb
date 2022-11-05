require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'mysql2'
require './models/Review.rb'

class ReviewApplication < Sinatra::Base
    get '/' do
   
    response = {reviews: Review.all}

    return response.to_json
    end
end