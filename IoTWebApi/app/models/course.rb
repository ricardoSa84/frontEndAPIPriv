class Course < ApplicationRecord
	belongs_to :school
	belongs_to :degree

    has_and_belongs_to_many :disciplines

	#overrides the sets
	def school=(params)
		@school = School.find( params[:id])	
		super(@school)
	end
	def degree=(params)
		@degree = Degree.find( params[:id])	
		super(@degree)
	end

	#Overrides the Gets
	def school	
		super
 	end
	def degree		
		super
 	end


end



