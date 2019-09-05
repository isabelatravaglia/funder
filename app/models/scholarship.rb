class Scholarship < ApplicationRecord
  after_save :async_alert_check
  has_many :notifications, dependent: :destroy
  belongs_to :area
  belongs_to :institution
  validates :name, presence: true
  validates :name, uniqueness: { scope: [:description, :application_start_date, :application_end_date, :url] }
  validates :description, presence: true
  validates :application_start_date, presence: true
  validates :application_end_date, presence: true
  validates :url, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_institution_and_area,
  against: [:name, :institution_id, :area_id, :id],
  using: {
      tsearch: { prefix: true }
    }

  def async_alert_check
    CheckNewScholarshipsJob.perform_later(self.id)
  end
end
