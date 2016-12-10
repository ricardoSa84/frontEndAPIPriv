class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :surname, :email, :api_key
  #has_one :role
  belongs_to :role
end
