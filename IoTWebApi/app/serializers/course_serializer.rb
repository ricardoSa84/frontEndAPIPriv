class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :degree
  #to show the details !!

  has_one :school
  has_one :degree

  #belongs_to :school

end
