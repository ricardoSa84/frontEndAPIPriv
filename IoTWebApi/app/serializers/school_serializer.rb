class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :country, :distric, :city, :county, :postCode, :addressDetails
end
