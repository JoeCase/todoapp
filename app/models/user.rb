class User < ActiveRecord::Base

  has_many :lists
  has_many :tasks
  has_many :tags, through: :tag_tasks, source: :task

  validates :username, :email, presence: true, uniqueness: true
  validates :email, format: {with: VALID_EMAIL_REGEX, message: 'Please enter a valid email.'}

  has_secure_password




end
