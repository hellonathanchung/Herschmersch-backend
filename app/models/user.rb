class User < ApplicationRecord
  has_secure_password
  has_many :lists
  has_many :list_stocks, through: :lists
  has_many :user_posts
  has_many :posts, through: :user_posts



  validates :username, uniqueness: {case_sensitive: false}

  def full_name
    "#{first_name} #{last_name}"
  end
end
