class AddPersonalidadeToBichos < ActiveRecord::Migration[6.0]
  def change
    add_column :bichos, :personalidade, :string
  end
end
