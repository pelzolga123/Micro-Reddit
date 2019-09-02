class Post < ApplicationRecord
  # create association between post and user model
  belongs_to :user
  # create association between post and comment model
  has_many :comments
  # Validation of title and body
  validates :title, presence: true
  validates :body, presence: true
end
