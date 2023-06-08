class CreateDietaries < ActiveRecord::Migration[6.1]
  def change
    create_table :dietaries do |t|
      t.string :preference
      t.integer :user_id
    end
  end
end
