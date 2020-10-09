class Post < ApplicationRecord
  has_many :user_posts, dependent: :destroy
  has_many :users, through: :user_posts, dependent: :destroy
end
