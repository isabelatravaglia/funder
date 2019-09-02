class Area < ApplicationRecord
  has_many :alerts
  has_many :scholarships
end
