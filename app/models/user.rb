class User < ApplicationRecord
  has_secure_password
  has_many :lists, dependent: :destroy
  has_many :list_stocks, through: :lists, dependent: :destroy
  has_many :posts, dependent: :destroy

  validates :username, uniqueness: {case_sensitive: false}


end
