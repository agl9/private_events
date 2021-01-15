class AddUserIdEvents < ActiveRecord::Migration[6.0]
  def change
    add_reference :events, :creator, index: true, foreign_key: { to_table: :users }
  end
end
