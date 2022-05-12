class Drinking < ApplicationRecord  
  enum status: {未入力:0, 〇:1, ×:2}

  belongs_to :user
  has_many :alcohols, dependent: :destroy
  has_many :visuallies, dependent: :destroy

  accepts_nested_attributes_for :alcohols, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :visuallies, reject_if: :all_blank, allow_destroy: true

  validates_associated :alcohols
  validates :alcohols, presence: true, if: -> { status == "〇" }
  
  def total_alcohol
    alcohols.to_a.sum { |alcohol| alcohol.quantity * alcohol.frequency * alcohol.number / 100 * 0.8 }
  end

  def time
    drinking_end_time + (total_alcohol / user.weight / 0.1).hour
  end
end
