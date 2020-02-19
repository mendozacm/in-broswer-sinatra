class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :owner_name
      t.string :location_name 
      t.integer :dogs 
      t.integer :cats 
      t.integer :birds
      
      t.integer :user_id
    end
  end
end
