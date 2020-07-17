class User < ApplicationRecord
  has_many :messages, dependent: :destroy

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates(
    :name,
    presence: true,
    uniqueness: { case_sensitive: false },
    length: { minimum: 3, maximum: 25 }
  )

  validates(
    :email,
    presence: true,
    uniqueness: { case_sensitive: false },
    format: { with: VALID_EMAIL_REGEX, message: 'invalid format' }
  )
  has_secure_password
end

