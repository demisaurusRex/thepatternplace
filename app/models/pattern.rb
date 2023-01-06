class Pattern < ApplicationRecord
  belongs_to :user
  has_many :line_items, dependent: :destroy
  validates :difficulty,
            acceptance:
            { accept: ["easy", "medium", "hard"] }
  has_many_attached :image
  has_one_attached :sizing
  has_one_attached :fabric_usage
  has_one_attached :pdf
  has_many :orders
  has_many :instructions
end
