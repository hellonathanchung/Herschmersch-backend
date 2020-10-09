class ListStockSerializer < ActiveModel::Serializer
  attributes :id, :listInformation, :stockInformation

  # belongs_to :list
  # belongs_to :stock

  def listInformation
    ActiveModel::SerializableResource.new(object.list, each_serializer: ListSerializer)
  end

  def stockInformation
    ActiveModel::SerializableResource.new(object.stock, each_serializer: StockSerializer)
  end
end
