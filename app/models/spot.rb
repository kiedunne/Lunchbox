class Spot < ApplicationRecord
  validates :spot, presence: true, length: {minimum: 3}
end
