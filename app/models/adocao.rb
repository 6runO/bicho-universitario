class Adocao < ApplicationRecord
  belongs_to :bicho
  belongs_to :user

  validates :user_id, :bicho_id, presence: true
end
