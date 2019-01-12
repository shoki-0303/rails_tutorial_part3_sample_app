class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 251}, format: { with: VALID_EMAIL_REGEXP}, uniqueness: true
end
