class User < ApplicationRecord

  before_save { self.email = self.email.downcase }
  MAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d]\-)*\.[a-z]+\z/i

  validates :name, presence: true, length: {minimum: 3, maximum: 30}

  validates :email, 
    presence: true,
    length: {minimum: 6, maximum: 70},
    uniqueness: { case_sensitive: false },
    format: { with: MAIL_REGEX }

  has_secure_password
  validates :password, presence: true, length: { minimum: 8, maximum: 255}
  
end
