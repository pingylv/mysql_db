class Sudziba < ApplicationRecord
	has_many :piezimes, dependent: :destroy
	validates :title, presence: { message: "ir obligati jaievada" }, length: { minimum: 5 } 
	validates :description, presence: { message: "ir obligati jaievada" } 
	validates :customer, presence: { message: "ir obligati jaievada" }, length:  {maximum: 30}
	validates :user, presence: { message: "ir obligati jaievada" }, length:  {maximum: 30}
	validates :status, presence: { message: "ir obligati jaievada" }, format: { with: /\A[a-zA-Z]+\z/, message: "var saturet tikai burtus" } 
end