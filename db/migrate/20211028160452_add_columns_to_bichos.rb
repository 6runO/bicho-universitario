class AddColumnsToBichos < ActiveRecord::Migration[6.0]
  def change
    add_column :bichos, :localizacao, :text
    add_column :bichos, :especie, :string
  end
end
