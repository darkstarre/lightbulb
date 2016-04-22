class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :idea_id
      t.string :body
    end
  end
end
