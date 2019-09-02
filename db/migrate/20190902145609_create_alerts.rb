class CreateAlerts < ActiveRecord::Migration[5.2]
  def change
    create_table :alerts do |t|
      t.string :name
      t.text :description
      t.references :area, foreign_key: true
      t.references :institution, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
