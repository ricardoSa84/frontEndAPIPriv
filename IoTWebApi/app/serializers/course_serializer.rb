class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :degree
  #to show the details !!
  debugger
  debugger

  belongs_to :school
  belongs_to :degree

  

end
