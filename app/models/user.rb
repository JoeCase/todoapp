class User < ActiveRecord::Base
  validates :username, :email, presence: true, uniqueness: true
  validates :email, format: {with: VALID_EMAIL_REGEX, message: 'Please enter a valid email.'}

  has_secure_password

  # def authenticate(password)
  #   self.password_digest == password
  # end


end
