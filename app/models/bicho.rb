class Bicho < ApplicationRecord
  SEXO = ['Fêmea', 'Macho']
  PORTE = ['Pequeno', 'Médio', 'Grande']
  ESPECIE = ['Cachorro', 'Gato']

  belongs_to :user
  has_one :adocao, dependent: :destroy
  has_one_attached :photo

  validates :apelido, :sexo, :cor, :porte, :especie, :localizacao, :photo, presence: true
  validates :sexo, inclusion: { in: SEXO }
  validates :porte, inclusion: { in: PORTE }
  validates :especie, inclusion: { in: ESPECIE }
end
