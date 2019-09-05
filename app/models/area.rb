class Area < ApplicationRecord
  has_many :alerts, dependent: :destroy
  has_many :scholarships, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
  mount_uploader :photo, PhotoUploader
end
