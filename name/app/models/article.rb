class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
	validates :description, presence: true 
	validates :customer, presence: true
	validates :user, presence: true    
end
