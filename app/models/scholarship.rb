class Scholarship < ApplicationRecord
  belongs_to :area
  belongs_to :institution
  has_many :favorites, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: { scope: [:description, :application_start_date, :application_end_date, :url] }
  validates :description, presence: true
  validates :application_start_date, presence: true
  validates :application_end_date, presence: true
  validates :url, presence: true
end
