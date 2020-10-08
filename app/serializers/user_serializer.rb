class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :imageUrl, :full_name

  # has_many :lists
  has_many :list_stocks, through: :lists
end