class GenreSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :description
  has_many :publications
end
