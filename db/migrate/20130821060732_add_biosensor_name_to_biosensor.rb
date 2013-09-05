class AddBiosensorNameToBiosensor < ActiveRecord::Migration
  def change
    add_column :biosensors, :biosensor, :string
  end
end
