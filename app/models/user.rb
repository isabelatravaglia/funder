class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites, dependent: :destroy
  has_many :institutions, dependent: :destroy
  has_many :alerts, dependent: :destroy
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :role, presence: true, on: :update
  validates :degree, presence: true, on: :update
  validates :nationality, presence: true, on: :update
  validates :area, presence: true, on: :update
  validates :country, presence: true, on: :update

  before_create :define_student_role

  def define_student_role
    self.role = "student"
  end

  def student?
  self.role == "student"
  end

  def premium_student?
    self.role == "premium_student"
  end
  def institution?
    self.role == "institution"
  end
  def profile_incomplete?
    self.first_name.blank? || self.last_name.blank? || self.degree.blank? || self.nationality.blank? || self.country.blank? || self.area.blank?
  end
end
