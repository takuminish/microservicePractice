require 'active_record'

# database.ymlからDB接続情報を取得
config  = YAML.safe_load(File.open("./database.yml", "r"))
ActiveRecord::Base.establish_connection(config['development'])

#
# Reviewクラス
#
class Review < ActiveRecord::Base

  # テーブル名がreviewのため、明示的に指定
  self.table_name = "review"

  # カラムの設定
  validates :review_id, presence: true
  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :review_content, presence: true
  validates :review_rank, presence: true
  validates :created_at, presence: true

end