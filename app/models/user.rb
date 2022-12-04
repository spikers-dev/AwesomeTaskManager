class User < ApplicationRecord
  has_secure_password

  VALID_NAME_REGEXP = /\A[A-Z](?=.{1,29}$)[A-Za-z]*(?:\h+[A-Z][A-Za-z]*)*$+\z/
  VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  has_many :my_tasks, class_name: 'Task', foreign_key: :author_id
  has_many :assigned_tasks, class_name: 'Task', foreign_key: :assignee_id

  validates :first_name, :last_name, presence: true, length: { minimum: 2 }, format: { with: VALID_NAME_REGEXP }
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEXP }
end
