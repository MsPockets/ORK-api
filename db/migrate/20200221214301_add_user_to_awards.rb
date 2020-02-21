class AddUserToAwards < ActiveRecord::Migration[5.2]
  def change
    add_reference :awards, :user, foreign_key: true
  end
end
