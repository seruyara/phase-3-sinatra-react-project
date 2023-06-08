class CreateRecipeDietaries < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_dietaries do |t|
      t.integer :recipe_id
      t.integer :dietary_id
    end
  end
end
