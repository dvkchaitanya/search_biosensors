class Substrate < ActiveRecord::Base
  attr_accessible :name

  has_many :biosensors
end


	
