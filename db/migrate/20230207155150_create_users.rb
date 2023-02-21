class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.string :userName
      t.date :dateDeNaissance
      t.string :genre
      t.timestamps
    end
  end
end
