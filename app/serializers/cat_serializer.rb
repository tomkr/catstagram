class CatSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name

  has_many :pictures, key: :pictures
end
