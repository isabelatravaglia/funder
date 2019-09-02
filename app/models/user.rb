class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites
  has_many :institutions
  has_many :alerts
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
  validates :degree, presence: true
  validates :nationality, presence: true
  validates :area, presence: true
  validates :country, presence: true
end
