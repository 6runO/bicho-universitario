class CreateUniversidades < ActiveRecord::Migration[6.0]
  def change
    create_table :universidades do |t|
      t.string :sigla
      t.string :nome
      t.string :estado
      t.string :região

      t.timestamps
    end
  end
end
