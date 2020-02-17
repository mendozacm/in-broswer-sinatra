class CreatUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email 
      #t.string :first_name
      #t.string :last_name
      #t.string :gender
      #t.string :date_of_birth
    
    end
  end
end
