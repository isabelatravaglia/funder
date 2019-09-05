class Alert < ApplicationRecord
  belongs_to :area, optional: true
  belongs_to :institution, optional: true
  belongs_to :user
  has_many :notifications, dependent: :destroy
  validates :name, presence: true
  validates :name, uniqueness: { scope: [:user_id, :area_id, :institution_id] }
  validate :any_present?

  def any_present?
    if %w(area_id institution_id).all? { |attr| self[attr].blank? }
      errors.add :base, "Please select Area or Institution"
    end
  end
end
