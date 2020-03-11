class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates_presence_of :name, :address, :category
  validates :category, inclusion: { in: ['Chinese', 'Italian', 'Japanese', 'French', 'belgian'] }
end
