class PublicationSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :rating, :date_pub, :img1, :genre_id, :author_id
  has_one :author
  has_one :genre
end
