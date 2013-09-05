class CreateBiosensors < ActiveRecord::Migration
  def change
    create_table :biosensors do |t|
      t.string :sensor_type
      t.string :imaging_purpose
      t.string :substrate
      t.string :lab_name
      t.string :analysis_technique
      t.string :host_type
      t.string :cell_or_organism

      t.timestamps
    end
  end
end
