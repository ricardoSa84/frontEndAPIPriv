class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :degree
  #to show the details !!

  belongs_to :school
  belongs_to :degree

  has_many :disciplines
end
