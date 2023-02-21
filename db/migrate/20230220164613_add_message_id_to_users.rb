class AddMessageIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :message_id, :integer
    add_index :users, :message_id
  end
end
