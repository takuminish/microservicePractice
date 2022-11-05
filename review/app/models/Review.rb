require 'active_record'

config  = YAML.safe_load(File.open("./database.yml", "r"))
ActiveRecord::Base.establish_connection(config['development'])

class Review < ActiveRecord::Base
  
  self.table_name = "review"

  validates :review_id, presence: true
  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :review_content, presence: true
  validates :review_rank, presence: true
  validates :created_at, presence: true

end