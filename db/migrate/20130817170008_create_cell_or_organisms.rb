class CreateCellOrOrganisms < ActiveRecord::Migration
  def change
    create_table :cell_or_organisms do |t|
      t.string :name

      t.timestamps
    end
  end
end
