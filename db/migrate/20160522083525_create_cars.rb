class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.string :color
      t.timestamps
    end
  end
end
