class CreateBathroomobjects < ActiveRecord::Migration
  def change
    create_table :bathroomobjects do |t|
      t.string :name

      t.timestamps
    end
  end
end
