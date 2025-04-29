class PlugType < ApplicationRecord
  has_many :plugs

  validates :name, presence: true
end
