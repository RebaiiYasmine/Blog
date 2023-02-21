class RenameUserNameToUserId < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :username, :user_id
  end
end
