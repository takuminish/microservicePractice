require 'sinatra'
require 'sinatra/reloader'

class ReviewApplication < Sinatra::Base
    get '/' do
    "Hello World"
    end
end