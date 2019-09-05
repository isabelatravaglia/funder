class AddScholarshipToNotifications < ActiveRecord::Migration[5.2]
  def change
    add_reference :notifications, :scholarship, foreign_key: true
  end
end
