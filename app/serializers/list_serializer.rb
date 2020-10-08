class ListSerializer < ActiveModel::Serializer
  attributes :id, :title

  belongs_to :user
  has_many :list_stocks
  has_many :stocks, through: :list_stocks
end
