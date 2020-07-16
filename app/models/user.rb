class User < ApplicationRecord
  has_many :messages, dependent: :destroy
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
    format: { with: URI::MailTo::EMAIL_REGEXP, message: 'invalid format' }
  )
  has_secure_password
end
