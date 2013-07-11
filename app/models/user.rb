require "bcrypt"

class User < ActiveRecord::Base
  attr_accessor :password

  before_save :encrypt_password

  validates :password, confirmation: true

  validates :password, presence: true, on: :create

  validates :email, presence: true, uniqueness: true

  def self.find_by_email_and_password(email, password)
    user = find_by(email: email)
    user if user.try(:authenticated_by?, password)
  end

  def authenticated_by?(password)
    password_hash == BCrypt::Engine.hash_secret(password, password_salt)
  end

  private

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
