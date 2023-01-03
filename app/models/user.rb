class User < ApplicationRecord
    
    has_many :riminders
    has_many :habits, through: :riminders
    has_many :to_do_lists

    validates :username, presence: true, uniqueness:true
    validates :email, presence: true, uniqueness: true
 
    has_secure_password
    # has_one_attached :picture
end
