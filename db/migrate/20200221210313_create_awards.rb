class CreateAwards < ActiveRecord::Migration[5.2]
  def change
    create_table :awards do |t|
      t.string :level, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
