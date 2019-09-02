class Notification < ApplicationRecord
  belongs_to :alert
  validates :status, presence: true
end
