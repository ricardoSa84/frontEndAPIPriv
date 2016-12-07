class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :degree
  #to show the details !!
  debugger
  has_one :school
  has_one :degree
  debugger
  #belongs_to :school

end
