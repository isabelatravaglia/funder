class CreateScholarships < ActiveRecord::Migration[5.2]
  def change
    create_table :scholarships do |t|
      t.string :name
      t.references :area, foreign_key: true
      t.text :description
      t.date :application_start_date
      t.date :application_end_date
      t.references :institution, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end
