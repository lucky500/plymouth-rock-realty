class Property < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  validates :address, presence: true, length: {minimum: 10}
  validates :price, presence: true
  validates :description, presence: true
  validates :bedrooms, presence: true
  validates :bathrooms, presence: true
  validates :sqft, presence: true
  validates :lot, presence: true
  validates :year_built, presence: true
end
