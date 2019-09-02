# frozen_string_literal: true

class Comment < ApplicationRecord
  # create association between comment and user model
  belongs_to :user
  # create association between comment and post model
  belongs_to :post

  # Validation of user, post and body
  validates :user, presence: true
  validates :post, presence: true
  validates :body, presence: true, length: { minimum: 5 }
end
