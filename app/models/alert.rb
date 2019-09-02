class Alert < ApplicationRecord
  belongs_to :area
  belongs_to :institution
  belongs_to :user
  has_many :notifications
end
