class CreatePoopstations < ActiveRecord::Migration
  def change
    create_table :poopstations do |t|
      t.string :sticker_type
      t.string :gender
      t.integer :stalltalkian_id
      t.integer :location_id

      t.timestamps
    end
  end
end
