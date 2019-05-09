class Client < ApplicationRecord
  validates :vards, presence: true, length: { minimum: 3 }, format: { with: /\A[a-zA-Z]+\z/, message: "tikai burtus var izmantot" }
  validates :uzvards, presence: true, length: { minimum: 3 }, format: { with: /\A[a-zA-Z]+\z/, message: "tikai burtus var izmantot" }
  validates :tel_nummurs, presence: true, length: { minimum: 8 }
  validates :adrese, presence: true
end
