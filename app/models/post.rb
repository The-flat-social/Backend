class Post < ApplicationRecord
   has_many :comments
   has_many :comments, through: :users
end
