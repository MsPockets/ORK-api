class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.date :date, null: false
      t.string :player_class, null: false
      t.integer :credits, null: false

      t.timestamps
    end
  end
end
