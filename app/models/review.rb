class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }

  validates_presence_of :restaurant_id, :rating, :content
end
