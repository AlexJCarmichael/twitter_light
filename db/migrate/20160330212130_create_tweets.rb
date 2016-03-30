class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :body, null: false
      t.integer :user_id, null: false, index: true

      t.timestamps null: false
    end
    add_foreign_key :tweets, :users
  end
end
