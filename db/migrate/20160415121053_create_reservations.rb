class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :tree_house, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
