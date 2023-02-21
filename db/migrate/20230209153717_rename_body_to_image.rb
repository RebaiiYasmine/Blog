class RenameBodyToImage < ActiveRecord::Migration[7.0]
  def change
    rename_column :posts, :body, :image
  end
end
