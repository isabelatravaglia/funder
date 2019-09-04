class AddFavoritedToFavourites < ActiveRecord::Migration[5.2]
  def change
    add_reference :favorites, :favorited, polymorphic: true
  end
end
