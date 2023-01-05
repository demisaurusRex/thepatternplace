class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pattern
  has_many :reviews
  has_many :purchased_instructions

  validates :user, uniqueness: { scope: :pattern }
end
