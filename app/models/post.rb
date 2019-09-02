class Post < ApplicationRecord
  # create association between post and user model
  belongs_to :user
  # Validation of title and body
  validates :title, presence: true
  validates :body, presence: true
end
