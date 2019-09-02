class Area < ApplicationRecord
  has_many :alerts
  has_many :scholarships
  validates :name, presence: true
  validates :name, uniqueness: true
end
