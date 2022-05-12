class Alcohol < ApplicationRecord
  belongs_to :drinking

  validates :kind, presence: true, length:  { maximum: 255 }
  validates :frequency, presence: true
  validates :quantity, presence: true
  validates :number, presence: true

  def alcohol_quantity
    quantity * frequency * number / 100 * 0.8
  end

end
