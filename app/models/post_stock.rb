class PostStock < ApplicationRecord
  belongs_to :post
  belongs_to :stock
end
