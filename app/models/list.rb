class List < ApplicationRecord
  belongs_to :user
  has_many :list_stocks
  has_many :stocks, through: :list_stocks
end
