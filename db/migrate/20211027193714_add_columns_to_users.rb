class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :nome, :string
    add_column :users, :vinculo, :string
    add_column :users, :ife, :string
  end
end
