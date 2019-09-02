class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.references :alert, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
