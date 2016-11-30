class CourseSerializer < ActiveModel::Serializer
  attributes :name
  #to show the details !!
  has_one :school
  has_one :degree
end
