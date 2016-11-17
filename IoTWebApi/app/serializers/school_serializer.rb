class SchoolSerializer < ActiveModel::Serializer
  attributes :name, :country, :distric, :city, :county, :postCode, :addressDetails
end
