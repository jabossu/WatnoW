class User < ApplicationRecord

  before_save { self.email = self.email.downcase }
  MAIL_REGEX=/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d]\-)*\.[a-z]+\z/i

  validates :name, presence: true, length: {minimum: 3, maximum: 30}
  validates :email, 
    presence: true,
    length: {minimum: 6, maximum: 70},
    format: { with: MAIL_REGEX },
    uniqueness: { case_sensitive: false }
end
