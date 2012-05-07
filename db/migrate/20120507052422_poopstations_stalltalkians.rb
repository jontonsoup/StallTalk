class PoopstationsStalltalkians < ActiveRecord::Migration
  def up
    create_table :poopstations_stalltalkians, :id => false do |t|
        t.integer :stalltalkian_id
        t.integer :poopstation_id
    end
end

def down
    drop_table :poopstations_stalltalkians
end
end
