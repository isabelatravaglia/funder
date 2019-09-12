class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :favorited, polymorphic: true

  # default_scope { order(created_at: :desc)}
  # scope :desc, -> {
  # order({ created_at: :desc })
  # }
end
