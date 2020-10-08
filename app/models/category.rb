class Category < ApplicationRecord
  has_many :post_categories
  has_many :posts, through: :post_categories

  validates_uniqueness_of :name
end
