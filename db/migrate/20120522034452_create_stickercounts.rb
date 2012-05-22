class CreateStickercounts < ActiveRecord::Migration
  def change
    create_table :stickercounts do |t|
      t.integer :count, :default => 25

      t.timestamps
    end
  end
end
