class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :grade
  has_one :discipline
end
