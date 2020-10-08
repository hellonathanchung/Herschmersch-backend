class Stock < ApplicationRecord
  has_many :post_stocks
  has_many :posts, through: :post_stocks

  has_many :list_stocks
  has_many :lists, through: :list_stock


end
