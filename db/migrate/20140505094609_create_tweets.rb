class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :zombie_id
      t.string :massage

      t.timestamps
    end
    add_index("tweets", "zombie_id")
  end
end
