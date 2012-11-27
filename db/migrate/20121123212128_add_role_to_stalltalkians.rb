class AddRoleToStalltalkians < ActiveRecord::Migration
  def change
    add_column :stalltalkians, :role, :string
  end
end
