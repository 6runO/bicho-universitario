class Bicho < ApplicationRecord
  SEXO = ['Fêmea', 'Macho']
  PORTE = ['Pequeno', 'Médio', 'Grande']
  belongs_to :user
  has_one :adocao

  validates :apelido, :sexo, :cor, :porte, presence: true
  validates :sexo, inclusion: { in: SEXO }
  validates :porte, inclusion: { in: PORTE }
end
