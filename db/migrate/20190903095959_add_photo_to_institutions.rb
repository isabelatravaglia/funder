class AddPhotoToInstitutions < ActiveRecord::Migration[5.2]
  def change
    add_column :institutions, :photo, :string
  end
end
