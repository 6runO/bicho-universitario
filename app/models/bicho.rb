class Bicho < ApplicationRecord
  belongs_to :user
  has_one :adocao

  validates :apelido, :sexo, :cor, :porte, presence: true
  validates :sexo, inclusion: { in: %w(fêmea macho) }
  validates :porte, inclusion: { in: %w(pequeno médio grande) }
end
