class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :picture
  has_many :habits
end
