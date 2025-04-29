class Plug < ApplicationRecord
  belongs_to :charger
  belongs_to :plug_type

  validates :speed, numericality: { greater_than: 0 }
end
