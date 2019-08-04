class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :address, :description, presence: true
  validates :name, presence: true, length: { minimum: 3 }
end

