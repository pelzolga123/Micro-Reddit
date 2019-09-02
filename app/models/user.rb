class User < ApplicationRecord
 # create association between user and post model
 has_many :posts
 # create association between user and comment model
 has_many :comments
# Validation of username and body
 validates :username, presence: true, uniqueness: true, length: { maximum: 20 }


  
end
