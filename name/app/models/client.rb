class Client < ApplicationRecord
  validates :vards, presence: { message: "ir obligati jaievada" }, length: { minimum: 3 }, format: { with: /\A[a-zA-Z]+\z/, message: "var saturet tikai burtus" }
  validates :uzvards, presence: { message: "ir obligati jaievada" }, length: { minimum: 3 }, format: { with: /\A[a-zA-Z]+\z/, message: "var saturet tikai burtus" }
  validates :tel_nummurs, presence: { message: "ir obligati jaievada" }, length: { in: 8..12 }
  validates :adrese, presence: { message: "ir obligati jaievada" }
end
