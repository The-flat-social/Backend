class User < ApplicationRecord

    has_many :posts 
    has_many :comments, through: :posts
    

    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    has_secure_password
    # getters and setters for:
    # - password=
    # - password_confirmation=
    # .authenticate
end
