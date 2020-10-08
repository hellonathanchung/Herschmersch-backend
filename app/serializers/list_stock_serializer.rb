class ListStockSerializer < ActiveModel::Serializer
  attributes :id, :stock_id, :list_id

  belongs_to :list
  belongs_to :stock
end
