class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.integer :checkin_id
      t.integer :bathroomobjects_id
      t.string :status

      t.timestamps
    end
  end
end
