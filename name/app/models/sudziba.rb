class Sudziba < ApplicationRecord
	has_many :komentarss, dependent: :destroy
	validates :title, presence: { message: "ir obligati jaievada" }, length: { minimum: 5 }
	validates :description, presence: { message: "ir obligati jaievada" } 
	validates :customer, presence: { message: "ir obligati jaievada" }
	validates :user, presence: { message: "ir obligati jaievada" }   
	validates :status, presence: { message: "ir obligati jaievada" }   
end