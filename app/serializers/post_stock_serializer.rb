class PostStockSerializer < ActiveModel::Serializer
  attributes :id
  has_one :post
  has_one :stock
end
