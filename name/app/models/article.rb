class Article < ApplicationRecord
	has_many :comments, dependent: :destroy
	validates :title, presence: { message: "ir obligati jaievada" }, length: { minimum: 5 }
	validates :description, presence: { message: "ir obligati jaievada" } 
	validates :customer, presence: { message: "ir obligati jaievada" }
	validates :user, presence: { message: "ir obligati jaievada" }    
end
