class Visually < ApplicationRecord
  enum visually: {未確認:0, 〇:1, ×:2}
  belongs_to :drinking
end
