# frozen_string_literal: true

class User < ApplicationRecord
  # create association between user and post model
  has_many :posts
  # create association between user and comment model
  has_many :comments
  # Validation of username and body
  validates :username, presence: true, uniqueness: true, length: { maximum: 20 }

  before_save { email.downcase! }
  validates :username, presence: true, uniqueness: true,
                       length: { maximum: 20 }
  # Validations for email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 30 }, format: { with:
                                                             VALID_EMAIL_REGEX },
                    uniqueness: {
                      case_sensitive: false
                    }
end
