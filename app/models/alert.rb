class Alert < ApplicationRecord
  belongs_to :area
  belongs_to :institution
  belongs_to :user
  has_many :notifications, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: { scope: [:user_id, :area_id, :institution_id] }
end
