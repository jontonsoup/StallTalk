class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :category
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
