class ChangeBiosensorColumnNamesToSupportForeignKeys < ActiveRecord::Migration
  def up

	rename_column :biosensors, :sensor_type_name, :sensor_type_id  
	rename_column :biosensors, :imaging_purpose_name, :purpose_of_imaging_id
	rename_column :biosensors, :Substrate_name, :substrate_id  
	rename_column :biosensors, :analysis_technique_name, :analysis_technique_id
	rename_column :biosensors, :host_type_name, :host_type_id
	rename_column :biosensors, :cell_or_organism_name, :cell_or_organism_id
  end

  def down
	rename_column :biosensors ,:sensor_type_id  ,:sensor_type_name
    rename_column :biosensors ,:purpose_of_imaging_id   ,:imaging_purpose_name
	rename_column :biosensors ,:substrate_id  ,:Substrate_name
    rename_column :biosensors ,:analysis_technique_id,:analysis_technique_name
    rename_column :biosensors ,:host_type_id,:host_type_name
    rename_column :biosensors ,:cell_or_organism_id,:cell_or_organism_name
   end
end
