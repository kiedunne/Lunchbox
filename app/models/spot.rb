class Spot < ApplicationRecord
  validates :spot, presence: true, length: { minimum: 3 }
  acts_as_followable
  belongs_to :user
  geocoded_by :location
  after_validation :geocode
end
