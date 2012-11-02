class CreateCheckins < ActiveRecord::Migration
  def change
    create_table :checkins do |t|
      t.integer :poopstation_id
      t.string :summary
      t.integer :stalltalkian_id

      t.timestamps
    end
  end
end
