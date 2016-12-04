class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :school
  #to show the details !!
  #belongs_to :school
end
