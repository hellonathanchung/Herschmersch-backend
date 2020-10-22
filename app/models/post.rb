class Post < ApplicationRecord
 belongs_to :user
 has_many :post_stocks
 has_many :categories, through: :post_categories, dependent: :destroy
 has_many :stocks, through: :post_stocks
end
