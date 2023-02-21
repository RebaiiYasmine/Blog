class RemoveNomFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :nom, :string
    remove_column :users, :prenom, :string 
    remove_column :users, :dateDeNaissance, :date
    remove_column :users, :genre, :string 
  end
end
