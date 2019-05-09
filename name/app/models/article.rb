class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
	validates :description, presence: true 
	validates :customer, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "can only contain letters" }
	validates :user, presence: true    
end
