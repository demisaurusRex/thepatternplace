class Pattern < ApplicationRecord
  belongs_to :user
  validates :difficulty,
            acceptance:
            { accept: ["easy", "medium", "hard"] }
  has_many :orders
  has_many :instructions
end
