class Universidade < ApplicationRecord
  has_many :users

  validates :sigla, :nome, :estado, :região, presence: true
  validates :sigla, :nome, uniqueness: true
end
