class Course < ApplicationRecord

  belongs_to :school
  belongs_to :degree

#attr_accessor :id, :school_attributes

  #belongs_to :school#, :foreign_key => "school_id", :primary_key => "id",  class_name: "School"

  #accepts_nested_attributes_for :school , update_only: true, allow_destroy: true

end


#{
#  "course":
#  {
#    "name": "inf",
#    "school_attributes":
#    {
#    	"id": "8"
#     }
#  }
#}

