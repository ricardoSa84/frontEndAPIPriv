class RoomSerializer < ActiveModel::Serializer
  attributes :id, :school_id, :description, :projector, :seats
  belongs_to :school
end
