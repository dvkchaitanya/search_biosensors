class Biosensor < ActiveRecord::Base
  #attr_accessible  :biosensor_name ,:sensor_type, :imaging_purpose, :substrate,:lab_name,:analysis_technique,:host_type,:cell_or_organism
  

  attr_accessible  :biosensor ,:sensor_type_id, :purpose_of_imaging_id, :substrate_id,:lab_name_id,:analysis_technique_id,:host_type_id,:cell_or_organism_id,:lab_name_id, :score
 belongs_to :sensor_type
 belongs_to :purpose_of_imaging  
 belongs_to :substrate
 belongs_to :lab_name
 belongs_to :analysis_technique  
 belongs_to :host_type
 belongs_to :cell_or_organism

 validates_presence_of :biosensor, :score

 def self.search(search_param)
	
		 if search_param	
		 	@biosensors =Biosensor.find(:all,:conditions => ['biosensor LIKE ?',"%#{search_param}%"])
		 else 
			@biosensors =Biosensor.find(:all) 
		 end
 end
end

