class PostCategorySerializer < ActiveModel::Serializer
  attributes :id
  has_one :posts
  has_one :categories
end
