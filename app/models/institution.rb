class Institution < ApplicationRecord
  belongs_to :user
  has_many :scholarships, dependent: :destroy
  has_many :alerts, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :city, presence: true
  validates :country, presence: true
  validates :ranking, presence: true
  mount_uploader :photo, PhotoUploader
end
