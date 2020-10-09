class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content
  
  has_one :user, through: :user_posts

end
