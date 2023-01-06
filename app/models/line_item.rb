class LineItem < ApplicationRecord
  belongs_to :pattern
  belongs_to :cart
  belongs_to :user

  validates :pattern, uniqueness: { scope: :user }

  def total_price
    return self.pattern.price
  end
end
