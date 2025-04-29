class Charger < ApplicationRecord
  belongs_to :location
  has_many :plugs, dependent: :destroy
  accepts_nested_attributes_for :plugs, allow_destroy: true

  validates :title, presence: true
  validates :description, presence: true
end
