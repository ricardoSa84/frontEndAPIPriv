class DegreeSerializer < ActiveModel::Serializer
  attributes :id, :description
  #belongs_to :course
end
