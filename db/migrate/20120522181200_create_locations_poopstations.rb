class CreateLocationsPoopstations < ActiveRecord::Migration
  def up
    create_table :locations_poopstations, :id => false do |t|
      t.column :location_id, :integer
      t.column :poopstation_id, :integer
    end
    end

    def down
        drop_table :locations_poopstations
    end
end
