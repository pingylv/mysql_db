class Piezime < ApplicationRecord
  belongs_to :sudziba
    validates :commenter, presence: { message: "ir obligati jaievada" }, length:  {maximum: 30}
	validates :body, presence: { message: "ir obligati jaievada" }
end
