class PurchasedInstruction < ApplicationRecord
  belongs_to :orders
  belongs_to :instructions
end
