class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :city
      t.string :country
      t.string :ranking
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
