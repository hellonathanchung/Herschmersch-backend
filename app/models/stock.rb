class Stock < ApplicationRecord
  has_many :post_stocks, dependent: :destroy
  has_many :posts, through: :post_stocks

  has_many :list_stocks, dependent: :destroy
  has_many :lists, through: :list_stock


end
