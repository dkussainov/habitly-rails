class ToDoListSerializer < ActiveModel::Serializer
  attributes :id, :title, :time
  has_one :user
end
