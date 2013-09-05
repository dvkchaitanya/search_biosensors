class AddScoreToBiosensors < ActiveRecord::Migration
  def change
    add_column :biosensors, :score, :int
  end
end
