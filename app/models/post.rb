# frozen_string_literal: true

# this class checks if body and title of post, validates title lenght
# creates necessary assotiations
class Post < ApplicationRecord
  # create association between post and user model
  belongs_to :user
  # create association between post and comment model
  has_many :comments
  # Validation of title and body
  validates :title, presence: true, length: { minimum: 5, maximum: 40 }
  validates :body, presence: true
end
