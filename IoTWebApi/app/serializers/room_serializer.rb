class RoomSerializer < ActiveModel::Serializer
  attributes :id, :description, :projector, :seats
  belongs_to :school
end
