class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email
  #has_one :role
  belongs_to :role
end
