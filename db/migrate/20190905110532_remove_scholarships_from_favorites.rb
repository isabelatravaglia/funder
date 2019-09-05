class RemoveScholarshipsFromFavorites < ActiveRecord::Migration[5.2]
  def change
    remove_reference :favorites, :scholarship, foreign_key: true
  end
end
