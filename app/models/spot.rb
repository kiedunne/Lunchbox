class Spot < ApplicationRecord
  validates :spot, presence: true, length: {minimum: 3}
  acts_as_followable
end
