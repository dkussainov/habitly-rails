class UserSerializer < ActiveModel::Serializer
  attributes :username, :email, :picture
  has_many :habits
  has_many :to_do_lists
end
