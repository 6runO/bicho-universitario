class CreateBichos < ActiveRecord::Migration[6.0]
  def change
    create_table :bichos do |t|
      t.string :apelido
      t.string :sexo
      t.string :cor
      t.string :porte
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
