class AddUserToVideo < ActiveRecord::Migration[6.0]
  def change
    add_reference :videos, :user, null: false, foreign_key: true
  end
end
