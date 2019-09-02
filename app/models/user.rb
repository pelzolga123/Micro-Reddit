class User < ApplicationRecord
  before_save { email.downcase! }
  validates :username, presence: true, uniqueness: true,
            length: { maximum: 20 }
  # Validations for email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 30 }, format: { with:
                                                             VALID_EMAIL_REGEX },
                                                             uniqueness: {
                                                              case_sensitive: false }
end
