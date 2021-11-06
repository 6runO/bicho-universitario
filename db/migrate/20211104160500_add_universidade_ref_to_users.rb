class AddUniversidadeRefToUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :universidade, null: false, foreign_key: true
  end
end
