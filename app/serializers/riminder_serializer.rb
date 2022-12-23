class RiminderSerializer < ActiveModel::Serializer
  attributes :id, :time
  has_one :user
  has_one :habit
end
