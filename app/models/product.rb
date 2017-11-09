class Product < ApplicationRecord
  has_many :product_lines
  has_many :ingredients, through: :product_lines
  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :price
  validates_presence_of :image
  validates_presence_of :of_type
  validates_inclusion_of :status, in: [true, false]
  scope :dishes, -> { where(of_type: 'dish', status: true) }
  scope :salads, -> { where(of_type: 'salad', status: true) }
  scope :drinks, -> { where(of_type: 'drink', status: true) }
end
