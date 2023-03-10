class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pattern
  has_one :review
  has_many :customised_instructions

  validates :user, uniqueness: { scope: :pattern }
end
