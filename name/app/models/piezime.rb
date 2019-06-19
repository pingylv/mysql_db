class Piezime < ApplicationRecord
  belongs_to :sudziba
    validates :commenter, presence: true
	validates :body, presence: true
end
