class CreateStalltalkians < ActiveRecord::Migration
  def change
    create_table :stalltalkians do |t|
      t.string :name
      t.timestamps
    end
  end
end
