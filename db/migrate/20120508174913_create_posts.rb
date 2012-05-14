class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :text
      t.integer :poopstation_id
      t.integer :stalltalkian_id
      t.integer :location_id
      t.integer :likes, :default => 0

      t.timestamps
    end
  end
end
