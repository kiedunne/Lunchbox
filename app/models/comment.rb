class Comment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :spot, optional: true
  has_one_attached :avatar
end
