class Scholarship < ApplicationRecord
  belongs_to :area
  belongs_to :institution
  has_many :favorites
end
