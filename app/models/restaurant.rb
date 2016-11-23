class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w(chinese italian japanese french belgian)

  validates :category, presence: true, inclusion: { in: CATEGORIES }
  validates :name, presence: true
  validates :address, presence: true
end
