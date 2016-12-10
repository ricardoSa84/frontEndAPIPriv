class CourseSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :degree
  #to show the details !!

  belongs_to :school
  belongs_to :degree

  #has_and_belongs_to_many :disciplines
end
