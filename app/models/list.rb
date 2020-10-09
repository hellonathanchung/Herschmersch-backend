class List < ApplicationRecord
  belongs_to :user

  has_many :list_stocks, dependent: :destroy
  has_many :stocks, through: :list_stocks, dependent: :destroy
end
