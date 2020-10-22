class Post < ApplicationRecord
 belongs_to :user
 has_many :post_stocks
 has_many :stocks, through: :post_stocks
end
