class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :favorites, dependent: :destroy
  has_many :institutions, dependent: :destroy
  has_many :alerts, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :role, presence: true
  validates :degree, presence: true
  validates :nationality, presence: true
  validates :area, presence: true
  validates :country, presence: true
end
