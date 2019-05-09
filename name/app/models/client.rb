class Client < ApplicationRecord
  validates :vards, presence: true, length: { minimum: 3 }, format: { with: /\A[a-zA-Z]+\z/, message: "var saturet tikai burtus" }
  validates :uzvards, presence: true, length: { minimum: 3 }, format: { with: /\A[a-zA-Z]+\z/, message: "var saturet tikai burtus" }
  validates :tel_nummurs, presence: true, length: { in: 8..12 }
  validates :adrese, presence: true
end
