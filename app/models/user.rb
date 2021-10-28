class User < ApplicationRecord
  has_many :adocaos, dependent: :destroy
  has_many :bichos, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nome, :vinculo, :ife, presence: true
  validates :vinculo, inclusion: { in: %w(servidor discente visitante) }
end
