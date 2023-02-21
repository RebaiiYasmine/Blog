class CreateSubscription < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.integer :follower_id
      t.integer :followee_id

      t.timestamps
    end
  end
end
