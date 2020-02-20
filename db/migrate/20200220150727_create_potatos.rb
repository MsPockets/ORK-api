class CreatePotatos < ActiveRecord::Migration[5.2]
  def change
    create_table :potatos do |t|
      t.boolean :butter
      t.string :brand

      t.timestamps
    end
  end
end
