class ChangeBiosensorColumnNames < ActiveRecord::Migration
  def up
	rename_column :biosensors, :sensor_type, :sensor_type_id
	rename_column :biosensors, :imaging_purpose, :imaging_purpose_name
	rename_column :biosensors, :substrate, :Substrate_name 
	rename_column :biosensors, :lab_name, :name_of_lab 
	rename_column :biosensors, :analysis_technique, :analysis_technique_name
	rename_column :biosensors, :host_type, :host_type_name
	rename_column :biosensors, :cell_or_organism ,:cell_or_organism_name
 end

  def down
 	 
	rename_column :biosensors, :sensor_type_id, :sensor_type
	rename_column :biosensors, :imaging_purpose_name, :imaging_purpose
	rename_column :biosensors, :Substrate_name , :substrate
	rename_column :biosensors, :name_of_lab , :lab_name
	rename_column :biosensors, :analysis_technique_name, :analysis_technique
	rename_column :biosensors, :host_type_name, :host_type
	rename_column :biosensors, :cell_or_organism_name,:cell_or_organism
  end 
end
