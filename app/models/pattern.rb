class Pattern < ApplicationRecord
<<<<<<< HEAD
  INSTRUCTION_CATEGORIES = ["Print", "Interactive"]
=======

>>>>>>> master
  DIFFICULTY_CATEGORIES = ["easy", "medium", "hard"]

  belongs_to :user
  has_many :line_items, dependent: :destroy
  validates :difficulty,
            acceptance:
            { accept: DIFFICULTY_CATEGORIES }
<<<<<<< HEAD
  validates :instruction_format,
            acceptance:
            { accept: INSTRUCTION_CATEGORIES }
  has_many_attached :photos
=======
  has_many_attached :image
>>>>>>> master
  has_one_attached :sizing
  has_one_attached :fabric_usage
  has_one_attached :pdf
  has_many :orders
  has_many :instructions
  has_many :reviews, through: :orders
end
