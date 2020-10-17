class PostStockSerializer < ActiveModel::Serializer
  attributes :id
#  belongs_to :post
#  belongs_to :stock


def stockInformation
  ActiveModel::SerializableResource.new(object.stock, each_serializer: StockSerializer)
end

end
