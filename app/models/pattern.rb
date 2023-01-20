class Pattern < ApplicationRecord
  INSTRUCTION_CATEGORIES = ["Print", "Interactive"]

  DIFFICULTY_CATEGORIES = ["Easy", "Medium", "Hard"]

  belongs_to :user
  has_many :line_items, dependent: :destroy
  validates :difficulty,
            acceptance:
            { accept: DIFFICULTY_CATEGORIES }
  validates :instruction_format,
            acceptance:
            { accept: INSTRUCTION_CATEGORIES }
  has_many_attached :image
  has_one_attached :sizing
  has_one_attached :fabric_usage
  has_many_attached :pdf
  has_many :orders
  has_many :instructions
  has_many :reviews, through: :orders
end
