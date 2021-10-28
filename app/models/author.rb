class Author < ApplicationRecord
	has_many :articles
	validates :authorname, presence: true,
					uniqueness: { case_sensitive: false }, 
					length: { minimum: 3, maximum: 25 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
	validates :email, presence: true, 
					uniqueness: { case_sensitive: false }, 
					length: { maximum: 105 },
					format: { with: URI::MailTo::EMAIL_REGEXP }
end