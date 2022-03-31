class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 3, maximum: 100 }
  validates :email, presence: true

  has_many :articles
end