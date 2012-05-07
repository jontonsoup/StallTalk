class CreateStalltalkians < ActiveRecord::Migration
  def change
    create_table :stalltalkians do |t|
      t.string :name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
