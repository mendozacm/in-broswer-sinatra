class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :owner_name
      t.integer :total_pets 
      t.integer :dogs 
      t.integer :cats 
      t.integer :birds
      t.text :special_needs
      t.integer :user_id
    end
  end
end
