class Review < ApplicationRecord
  belongs_to :restaurant
  # validates :rating, presence: true, format: { with: /\A[012345]/ }
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }
end
