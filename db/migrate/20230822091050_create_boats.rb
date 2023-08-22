class CreateBoats < ActiveRecord::Migration[7.0]
  def change
    create_table :boats do |t|
      t.string :name
      t.text :description
      t.integer :capacity
      t.integer :price
      t.string :location

      t.timestamps
    end
  end
end
