class UserPostSerializer < ActiveModel::Serializer
  attributes :id
  
  belongs_to :user
  belongs to :post
end
