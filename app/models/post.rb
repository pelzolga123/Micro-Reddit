# frozen_string_literal: true

class Post < ApplicationRecord
  # create association between post and user model
  belongs_to :user
  # create association between post and comment model
  has_many :comments
  # Validation of title and body
  validates :title, presence: true, length: { minimum: 5, maximum: 40 }
  validates :body, presence: true
end
