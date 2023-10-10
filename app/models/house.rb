class House < ApplicationRecord
  has_many :students # One to many association
  has_many :teachers # One to many association

  validates :name, :points, presence: true
  validates :points, numericality: { only_integer: true }
end
