class Search < ActiveRecord::Base
  attr_accessible :biosensor_name, :biosensors, :lab_name_ent, :sort_column, :sort_order
	attr_accessor :biosensors_list,:find_biosensors
    validates_presence_of :biosensor_name, :lab_name_ent 	


	def biosensors_list()
		@biosensors ||= find_biosensors()
	end

	
	def find_biosensors()
		
	 Biosensor.where( "biosensor like ? and  lab_name_id= ? ", '%'+biosensor_name+'%',lab_name_ent)
	end

end
