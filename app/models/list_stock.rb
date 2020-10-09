class ListStock < ApplicationRecord
  belongs_to :list
  belongs_to :stock

  has_one :user, through: :list, dependent: :destroy
end
