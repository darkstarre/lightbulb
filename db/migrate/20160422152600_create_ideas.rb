class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :body
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
