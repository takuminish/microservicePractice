require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'mysql2'

class ReviewApplication < Sinatra::Base
    get '/' do
    config  = YAML.safe_load(File.open("./database.yml", "r"))

    ActiveRecord::Base.establish_connection(config['development'])
   
    response = {reviews: ActiveRecord::Base.connection.select_all("select * from review")}

    return response.to_json
    end
end